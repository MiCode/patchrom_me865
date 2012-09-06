.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    }
.end annotation


# static fields
.field static final ADN_FOOTER_SIZE_BYTES:I = 0xe

.field static final ADN_MAX_NUMBER_BYTES:I = 0xa

.field static final ANR_MAX_NUMBER_BYTES:I = 0xa

.field static final ANR_NUMBER_EXT1_OFFSET:I = 0xe

.field static final ANR_NUMBER_LENGTH_OFFSET:I = 0x1

.field static final ANR_NUMBER_OFFSET:I = 0x2

.field static final ANR_TON_OFFSET:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x7

.field private static final EVENT_EFANR_LINEAR_RECORD_SIZE_DONE:I = 0x1b

.field private static final EVENT_EFEMAIL_LINEAR_RECORD_SIZE_DONE:I = 0x18

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x14

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_LINEAR_RECORD_SIZE_DONE:I = 0x1c

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x11

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0xe

.field private static final EVENT_UPDATE_EXT_DONE:I = 0x12

.field private static final EVENT_UPDATE_IAP_DONE:I = 0xd

.field private static final EVENT_UPDATE_USIM_ADN_DONE:I = 0xc

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EXT1_MAX_RECORD:I = 0xa

.field static final EXT_MAX_NUMBER_BYTES:I = 0xa

.field static final EXT_RECORD_SIZE:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PROPERTY_USIM_SUPPORT_ANR:Ljava/lang/String; = "gsm.mot.usim.support.anr"

.field static final PROPERTY_USIM_SUPPORT_EMAIL:Ljava/lang/String; = "gsm.mot.usim.support.email"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_EMPTY_LOCATION_BY_ANR:I = 0x2

.field private static final USIM_EMPTY_LOCATION_BY_EMAIL:I = 0x1

.field private static final USIM_EMPTY_LOCATION_BY_EMAIL_ANR:I = 0x3

.field private static final USIM_EMPTY_LOCATION_BY_NONE:I = 0x0

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnBase:I

.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAdnSizeInfo:[I

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrForAdnRec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailCapacity:I

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExt1FileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mExt1Record:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExt1Set:Ljava/util/BitSet;

.field private mExt1Size:I

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSuccess:Z

.field private mallEmailFileRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mallIapFileRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    .line 619
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 160
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "phone"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    .line 619
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 141
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method private addAnrToPhoneBookRecord(II)V
    .locals 11
    .parameter "adnGroup"
    .parameter "adnBase"

    .prologue
    .line 1266
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1271
    .local v6, numAdnRecs:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size of adn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1277
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v5, v8, p2

    .line 1280
    .local v5, len:I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1AnrFile(I)V

    .line 1282
    move v4, p2

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 1283
    const/4 v0, 0x0

    .line 1285
    .local v0, anr:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    sub-int v9, v4, p2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anr:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    .restart local v0       #anr:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1282
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1286
    .end local v0           #anr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1303
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    goto :goto_0

    .line 1291
    .restart local v0       #anr:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .line 1293
    .local v7, rec:Lcom/android/internal/telephony/AdnRecord;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    sub-int v9, v4, p2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1294
    .local v1, anrRec:[B
    const/16 v8, 0xe

    aget-byte v8, v1, v8

    and-int/lit16 v3, v8, 0xff

    .line 1295
    .local v3, extRecord:I
    if-lez v3, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v3, v8, :cond_3

    .line 1296
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtRecord(I)V

    .line 1297
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    :cond_3
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/AdnRecord;->setANR(Ljava/lang/String;)V

    .line 1300
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private buildExtString(Ljava/lang/String;I)[B
    .locals 9
    .parameter "extNumber"
    .parameter "recordSize"

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 623
    new-array v1, p2, [B

    .line 625
    .local v1, extData:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 626
    aput-byte v5, v1, v2

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    :cond_0
    aput-byte v4, v1, v4

    .line 630
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 631
    :cond_1
    const-string v3, "[buildExtString] Empty number"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 648
    :goto_1
    return-object v1

    .line 634
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    .line 635
    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 638
    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 639
    .local v0, bcdNumber:[B
    if-eqz v0, :cond_4

    .line 640
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    :cond_4
    aput-byte v7, v1, v4

    .line 644
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 645
    add-int/lit8 v3, p2, -0x1

    aput-byte v5, v1, v3

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1893
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 1894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 1895
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1899
    :goto_0
    return-void

    .line 1898
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;I)[I
    .locals 13
    .parameter "adn"
    .parameter "usim_empty_location_by"

    .prologue
    .line 1494
    const/4 v9, 0x0

    .line 1495
    .local v9, results:[I
    const/4 v0, -0x1

    .line 1496
    .local v0, efid:I
    const/4 v1, -0x1

    .line 1497
    .local v1, extensionEF:I
    const/4 v4, 0x0

    .line 1498
    .local v4, index:I
    const/4 v6, -0x1

    .line 1501
    .local v6, location:I
    const/4 v7, 0x0

    .line 1503
    .local v7, pbrIndex:I
    const/4 v11, 0x1

    if-ne p2, v11, :cond_1

    .line 1504
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findIndexOfEmptyAdnLocationByEmail()I

    move-result v4

    .line 1517
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v4, v11, :cond_2

    .line 1518
    const-string v11, "oops,usim adn full"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1523
    const-string v11, "gsm.mot.sim.update.error"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    .line 1574
    .end local v9           #results:[I
    .local v10, results:[I
    :goto_0
    return-object v10

    .line 1506
    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1510
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1506
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1527
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_2
    move v6, v4

    .line 1528
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    array-length v11, v11

    if-ge v3, v11, :cond_5

    .line 1529
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v8, v11, v3

    .line 1530
    .local v8, recNum:I
    if-ge v4, v8, :cond_7

    .line 1533
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v11, :cond_3

    .line 1534
    const-string v11, "mPbrFile is null now"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v10, v9

    .line 1535
    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto :goto_0

    .line 1538
    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1539
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_4

    move-object v10, v9

    .line 1540
    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto :goto_0

    .line 1544
    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_4
    move v7, v3

    .line 1550
    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1551
    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1552
    const/16 v11, 0xc2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1553
    const/16 v11, 0xc2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1563
    .end local v2           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8           #recNum:I
    :cond_5
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findAdnRecordInfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v0, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",extention:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v1, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",location:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1567
    const/4 v11, 0x5

    new-array v9, v11, [I

    .line 1568
    const/4 v11, 0x0

    aput v0, v9, v11

    .line 1569
    const/4 v11, 0x1

    aput v1, v9, v11

    .line 1570
    const/4 v11, 0x2

    aput v4, v9, v11

    .line 1571
    const/4 v11, 0x3

    aput v6, v9, v11

    .line 1572
    const/4 v11, 0x4

    aput v7, v9, v11

    move-object v10, v9

    .line 1574
    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto/16 :goto_0

    .line 1555
    .end local v10           #results:[I
    .restart local v2       #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v8       #recNum:I
    .restart local v9       #results:[I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 1561
    .end local v2           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    sub-int/2addr v4, v8

    .line 1528
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method private findIndexOfEmptyAdnLocationByEmail()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1451
    const/4 v0, -0x1

    .line 1452
    .local v0, index:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    .line 1453
    .local v2, recCount:I
    const/4 v1, -0x1

    .line 1455
    .local v1, pbrIndex:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1456
    const/4 v3, -0x1

    .line 1457
    .local v3, recordIndexInEF:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v3

    .line 1458
    if-eq v3, v6, :cond_2

    .line 1459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is one email slot, pbrIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recordIndexInEF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1461
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findIndexOfEmptyAdnLocationByPbrIndex(I)I

    move-result v0

    .line 1462
    if-eq v0, v6, :cond_2

    .line 1469
    .end local v3           #recordIndexInEF:I
    :cond_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .end local v0           #index:I
    :cond_1
    return v0

    .line 1455
    .restart local v0       #index:I
    .restart local v3       #recordIndexInEF:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findIndexOfEmptyAdnLocationByPbrIndex(I)I
    .locals 5
    .parameter "pbrIndex"

    .prologue
    .line 1473
    const/4 v2, -0x1

    .line 1474
    .local v2, ret:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    array-length v4, v4

    if-ge p1, v4, :cond_1

    if-ltz p1, :cond_1

    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, base:I
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 1478
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v4, v4, v3

    add-int/2addr v0, v4

    .line 1476
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1480
    :cond_0
    move v1, v0

    .local v1, j:I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v4, v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_1

    .line 1481
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v4}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1482
    move v2, v1

    .line 1487
    .end local v0           #base:I
    .end local v1           #j:I
    .end local v3           #x:I
    :cond_1
    return v2

    .line 1480
    .restart local v0       #base:I
    .restart local v1       #j:I
    .restart local v3       #x:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getAvailableExtIndex()I
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 213
    .local v0, index:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    if-ge v0, v1, :cond_0

    .end local v0           #index:I
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 9
    .parameter "pbrIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xc4

    .line 304
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 331
    :goto_0
    return-object v3

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 307
    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 310
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 311
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 313
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1b

    const/4 v7, 0x0

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 327
    const-string v3, "verifyAnr failed get EFANR Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 328
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readANRFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 331
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 9
    .parameter "pbrIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xca

    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 487
    :goto_0
    return-object v3

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 459
    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 463
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 464
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 467
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 470
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 474
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 483
    const-string v3, "verifyEmail failed get EFEMAIL Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 484
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in verifyEmail"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 487
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getEfInfo(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 7
    .parameter "pbrIndex"
    .parameter "efTag"

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 252
    :goto_0
    return-object v3

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 228
    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 231
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 232
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 237
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1c

    invoke-virtual {p0, v6, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 241
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_4
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 248
    const-string v3, "failed get EF Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 249
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in getEfInfo"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 252
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getFreeEmailLocation(I)I
    .locals 8
    .parameter "pbrIndex"

    .prologue
    const/4 v5, -0x1

    .line 425
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v1

    .line 426
    .local v1, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v1, :cond_1

    .line 427
    const-string v6, "getFreeEmailLocation failed get EFEMAIL Info"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 447
    :cond_0
    :goto_0
    return v4

    .line 431
    :cond_1
    const/4 v4, -0x1

    .line 432
    .local v4, recordIndexInEF:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 433
    .local v0, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v0, :cond_2

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "don\'t get email file record for PBR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 435
    goto :goto_0

    .line 438
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v6, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    if-ge v3, v6, :cond_0

    .line 439
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 440
    .local v2, emailrecord:[B
    if-nez v2, :cond_3

    move v4, v5

    goto :goto_0

    .line 441
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmptyEFRecord([B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 442
    add-int/lit8 v4, v3, 0x1

    .line 443
    goto :goto_0

    .line 438
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getMaxANRNumberLength()I
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x14

    return v0
.end method

.method private isEmailsNull([Ljava/lang/String;)Z
    .locals 3
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    .line 2208
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isEmptyEFRecord([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x3

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 411
    aget-byte v1, p1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 416
    :cond_0
    if-eq v0, v3, :cond_2

    .line 417
    const/4 v1, 0x0

    .line 420
    :goto_1
    return v1

    .line 410
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2197
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USIMPB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2201
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USIMPB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    return-void
.end method

.method private parseANR([BZ)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "isType2"

    .prologue
    .line 1230
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v2, v5, 0xff

    .line 1231
    .local v2, numberLength:I
    const/4 v5, 0x2

    invoke-static {p1, v5, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1233
    .local v1, number:Ljava/lang/String;
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    .line 1234
    .local v0, extRecord:I
    const/16 v5, 0xff

    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    .line 1236
    :cond_0
    if-eqz p2, :cond_1

    .line 1237
    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, p1, v5

    and-int/lit16 v4, v5, 0xff

    .line 1238
    .local v4, sfi:I
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 1239
    .local v3, recID:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type2 ANR,(sfi-rec#):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1241
    .end local v3           #recID:I
    .end local v4           #sfi:I
    :cond_1
    return-object v1
.end method

.method private readANRFileAndWait(II)V
    .locals 6
    .parameter "recNum"
    .parameter "adnBase"

    .prologue
    const/16 v5, 0xc4

    .line 1309
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1312
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 1314
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1317
    .local v1, efid:I
    const-string v3, "Just support TYPE1 ANR"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1322
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1325
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 1332
    const-string v3, "Error: Anr file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readANRFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1336
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v3, "gsm.mot.usim.support.anr"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addAnrToPhoneBookRecord(II)V

    .line 1340
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private readAdnFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v6, 0xc2

    const/16 v5, 0xc0

    .line 1862
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1890
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1866
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1869
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1871
    const/4 v1, 0x0

    .line 1872
    .local v1, efExtId:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1873
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1876
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1885
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1886
    :catch_0
    move-exception v0

    .line 1887
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1878
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1879
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "NullPointerException in readAdnFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc1

    const/16 v6, 0xca

    .line 1600
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1604
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 1606
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1607
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1612
    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_4

    .line 1615
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1616
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 1620
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 1621
    const-string v3, "Error: IAP file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1626
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1637
    const-string v3, "gsm.mot.usim.support.email"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1642
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 1648
    const-string v3, "Error: Email file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readEmailFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1653
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 6
    .parameter "recNum"

    .prologue
    .line 1834
    const/4 v3, 0x0

    .line 1836
    .local v3, emailRec:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    const/4 v4, 0x0

    .line 1843
    .local v4, recSize:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v5, :cond_0

    .line 1845
    array-length v4, v3

    .line 1853
    :goto_0
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1856
    .end local v4           #recSize:I
    :goto_1
    return-object v2

    .line 1837
    :catch_0
    move-exception v1

    .line 1838
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1

    .line 1849
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #recSize:I
    :cond_0
    array-length v5, v3

    add-int/lit8 v4, v5, -0x2

    goto :goto_0
.end method

.method private readExt1AndWait()V
    .locals 9

    .prologue
    const/16 v8, 0xc2

    const/4 v6, 0x0

    .line 1348
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 1375
    :cond_0
    return-void

    .line 1350
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1351
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 1353
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1355
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1357
    .local v1, extensionEF:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1360
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1367
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    .line 1368
    new-instance v5, Ljava/util/BitSet;

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    invoke-direct {v5, v7}, Ljava/util/BitSet;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    .line 1369
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    if-ge v3, v5, :cond_0

    .line 1370
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/internal/telephony/AdnRecord;->parseExt1([B)Ljava/lang/String;

    move-result-object v4

    .line 1371
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v7, v3, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 1369
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1361
    .end local v3           #i:I
    .end local v4           #number:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1362
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "Interrupted Exception in readExt1AndWait:"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v3       #i:I
    .restart local v4       #number:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 1372
    goto :goto_2
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1664
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception in readIapFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 1589
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1591
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :goto_0
    return-void

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 205
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private stringCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 889
    if-ne p1, p2, :cond_0

    .line 890
    const/4 v0, 0x1

    .line 898
    :goto_0
    return v0

    .line 892
    :cond_0
    if-nez p1, :cond_1

    .line 893
    const-string p1, ""

    .line 895
    :cond_1
    if-nez p2, :cond_2

    .line 896
    const-string p2, ""

    .line 898
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateAdnByLocationInfo(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z
    .locals 20
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "adnLocationInfo"
    .parameter "response"

    .prologue
    .line 1109
    const/16 p4, 0x0

    .line 1110
    if-nez p5, :cond_1

    .line 1111
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adn record don\'t exist for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1112
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adn record don\'t exist for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1113
    const/4 v8, 0x0

    .line 1217
    :cond_0
    :goto_0
    return v8

    .line 1115
    :cond_1
    const/16 v18, 0x0

    aget v16, p5, v18

    .line 1116
    .local v16, usimAdnEf:I
    const/16 v18, 0x1

    aget v17, p5, v18

    .line 1117
    .local v17, usimAdnExtentionEf:I
    const/16 v18, 0x2

    aget v13, p5, v18

    .line 1118
    .local v13, recordIndexInEF:I
    const/16 v18, 0x3

    aget v9, p5, v18

    .line 1121
    .local v9, indexInPhoneBookRecords:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/internal/telephony/AdnRecord;

    .line 1124
    .restart local p2
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    .line 1125
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    .line 1126
    .local v7, emails:[Ljava/lang/String;
    const-string v6, ""

    .line 1127
    .local v6, email:Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v6, v7, v18

    .line 1128
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1131
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x4

    aget v11, p5, v18

    .line 1133
    .local v11, pbrIndex:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "got expected info from usim:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",extention"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",pbrIndex:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",recordIndexInEF within file:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",indexInPhoneBookRecords:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1139
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_3

    .line 1140
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Adn record don\'t exist for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1141
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1145
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyInput(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v10

    .line 1146
    .local v10, isValidData:Z
    if-nez v10, :cond_4

    .line 1147
    const-string v18, "invalid input data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1148
    const-string v18, "newAdn is invalid"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1149
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1151
    :cond_4
    const-string v18, "valid input data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 1156
    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_5

    .line 1157
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Have pending update for EF:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1158
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1161
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1167
    const/4 v8, 0x1

    .line 1168
    .local v8, finalWriteResult:Z
    const/4 v15, 0x0

    .line 1172
    .local v15, tmpWriteResult:Z
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeADNFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    .line 1173
    if-nez v15, :cond_6

    const/4 v8, 0x0

    .line 1176
    :cond_6
    if-eqz v8, :cond_8

    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeANRFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    .line 1179
    if-nez v15, :cond_7

    const/4 v8, 0x0

    .line 1181
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEmailFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    .line 1182
    if-nez v15, :cond_8

    const/4 v8, 0x0

    .line 1187
    :cond_8
    if-eqz v8, :cond_9

    .line 1188
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Message;

    .line 1197
    .local v14, response1:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 1199
    if-eqz v8, :cond_a

    .line 1200
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 1201
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeEmail()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/AdnRecordCache;->setFreeEmail(I)V

    .line 1210
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "free email:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeEmail()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1213
    :cond_a
    if-nez v8, :cond_0

    .line 1214
    const-string v18, "UpdateAdn failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1192
    .end local v14           #response1:Landroid/os/Message;
    :catch_0
    move-exception v5

    .line 1193
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "interrupted while trying to update by search"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1204
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v14       #response1:Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeEmail()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/AdnRecordCache;->setFreeEmail(I)V

    goto :goto_2

    .line 1207
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Both are : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ; oldAdn.getEmails():"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "   newAdn.getEmails():"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updatePhoneAdnRecord(I)V
    .locals 13
    .parameter "adnGroup"

    .prologue
    .line 1674
    const/4 v3, 0x0

    .line 1676
    .local v3, emailCount:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v11, :cond_0

    .line 1768
    :goto_0
    return-void

    .line 1677
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1679
    .local v7, numAdnRecs:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v11, :cond_5

    .line 1687
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 1689
    const/4 v10, 0x0

    .line 1691
    .local v10, record:[B
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #record:[B
    check-cast v10, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    .restart local v10       #record:[B
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v11, v10, v11

    and-int/lit16 v9, v11, 0xff

    .line 1700
    .local v9, recNum:I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_1

    .line 1702
    and-int/lit16 v6, v9, 0xff

    .line 1703
    .local v6, n1:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " adn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", email index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1704
    const/16 v11, 0xff

    if-ne v6, v11, :cond_3

    .line 1705
    const-string v11, "oops,unused entry for email"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1687
    .end local v6           #n1:I
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1692
    .end local v9           #recNum:I
    .end local v10           #record:[B
    :catch_0
    move-exception v1

    .line 1693
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .line 1761
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v12}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeEmail()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/AdnRecordCache;->setFreeEmail(I)V

    .line 1762
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Free Email count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v12}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeEmail()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", emailCount : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in adnGroup: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1709
    .restart local v6       #n1:I
    .restart local v9       #recNum:I
    .restart local v10       #record:[B
    :cond_3
    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/String;

    .line 1711
    .local v4, emails:[Ljava/lang/String;
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    .line 1713
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    add-int v0, v5, v11

    .line 1714
    .local v0, adnIndex:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update email:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";for adn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1717
    add-int/lit8 v3, v3, 0x1

    .line 1719
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    .line 1721
    .local v8, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v8, :cond_4

    .line 1722
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1728
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1725
    :cond_4
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    .end local v8           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v11, ""

    const-string v12, ""

    invoke-direct {v8, v11, v12, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v8       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_3

    .line 1738
    .end local v0           #adnIndex:I
    .end local v4           #emails:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #n1:I
    .end local v8           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #recNum:I
    .end local v10           #record:[B
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 1739
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 1740
    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1738
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1743
    :cond_6
    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/String;

    .line 1744
    .restart local v4       #emails:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v2, v4, v11

    .line 1745
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    add-int v0, v5, v11

    .line 1746
    .restart local v0       #adnIndex:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update email:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";for adn:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1748
    add-int/lit8 v3, v3, 0x1

    .line 1750
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    .line 1751
    .restart local v8       #rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v8, :cond_7

    .line 1752
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1757
    :goto_6
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1755
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    .end local v8           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v11, ""

    const-string v12, ""

    invoke-direct {v8, v11, v12, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v8       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_6
.end method

.method private updatelocalEmailRecord(II[B)Z
    .locals 9
    .parameter "pbrIndex"
    .parameter "recordIndexInEF"
    .parameter "newEmailRecord"

    .prologue
    const/16 v8, 0xca

    const/4 v5, 0x0

    .line 1010
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1011
    .local v3, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v3, :cond_0

    .line 1035
    :goto_0
    return v5

    .line 1013
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1014
    const-string v6, "verifyEmail failed get EFEMAIL Info"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    .line 1020
    .local v1, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1021
    .local v0, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v0, :cond_2

    .line 1022
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "don\'t get email file record for PBR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1028
    .local v2, emailrecord:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v5, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    if-ge v4, v5, :cond_3

    .line 1029
    aget-byte v5, p3, v4

    aput-byte v5, v2, v4

    .line 1028
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1032
    :cond_3
    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private verifyAdn(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 12
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/16 v11, 0xc0

    const/16 v10, 0x28

    const/16 v9, 0x14

    const/4 v6, 0x0

    .line 256
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, tag:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, number:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v6

    .line 263
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 264
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 266
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    invoke-direct {p0, p1, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfInfo(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v0

    .line 269
    .local v0, adnInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-eqz v0, :cond_0

    .line 273
    iget v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    add-int/lit8 v3, v7, -0xe

    .line 275
    .local v3, maxNameLength:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    .line 276
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {p3, v4}, Lcom/android/internal/telephony/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 280
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_3

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New adn length too long, adn length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", limit is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvailableExtIndex()I

    move-result v1

    .line 283
    .local v1, extIndex:I
    if-gez v1, :cond_4

    .line 284
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 291
    .end local v1           #extIndex:I
    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 286
    .restart local v1       #extIndex:I
    :cond_4
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setExtRecord(I)V

    .line 287
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setAdnExtNumber(Ljava/lang/String;)V

    .line 288
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1
.end method

.method private verifyAnr(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 9
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 336
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, newanr:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, oldanr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v5

    .line 343
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 344
    const-string v6, "same anr. doesn\'t need change"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v7, :cond_4

    :cond_3
    move v5, v6

    goto :goto_0

    .line 353
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 354
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_5

    move v5, v6

    goto :goto_0

    .line 357
    :cond_5
    const/16 v7, 0xc4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 359
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v0

    .line 360
    .local v0, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v0, :cond_6

    move v5, v6

    .line 361
    goto :goto_0

    .line 364
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x14

    if-le v7, v8, :cond_7

    .line 365
    const/16 v7, 0x28

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/AdnRecord;->setANR(Ljava/lang/String;)V

    .line 369
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New anr length too long, newanr length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",limit is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvailableExtIndex()I

    move-result v1

    .line 373
    .local v1, extIndex:I
    if-gez v1, :cond_8

    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setANR(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :cond_8
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtRecord(I)V

    .line 377
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtNumber(Ljava/lang/String;)V

    .line 378
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 385
    .end local v0           #anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v1           #extIndex:I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This PBR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "doesn\'t support ANR"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 387
    goto/16 :goto_0
.end method

.method private verifyEmail(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 19
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 493
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    .line 494
    .local v11, newemails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v10, v11, v17

    .line 496
    .local v10, newemail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 497
    .local v15, oldemails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v14, v15, v17

    .line 499
    .local v14, oldemail:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 500
    const-string v17, "email is same, not need update"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 501
    const/16 v17, 0x1

    .line 581
    :goto_0
    return v17

    .line 507
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 509
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 510
    .local v6, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v6, :cond_3

    const/16 v17, 0x0

    goto :goto_0

    .line 514
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 515
    .local v5, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v5, :cond_4

    const/16 v17, 0x0

    goto :goto_0

    .line 517
    :cond_4
    const/16 v17, 0xca

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 526
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 527
    .local v9, newEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v8, v9, v17

    .line 529
    .local v8, newEmail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v13

    .line 530
    .local v13, oldEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v12, v13, v17

    .line 533
    .local v12, oldEmail:Ljava/lang/String;
    const/16 v16, 0x0

    .line 535
    .local v16, recLen:I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v3

    .line 536
    .local v3, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v3, :cond_5

    const/16 v17, 0x0

    goto :goto_0

    .line 538
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 540
    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v16, v0

    .line 541
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Email type1 ... emailInfo.recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 564
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 566
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    .line 567
    .local v2, clipEmails:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 568
    .local v7, newCharEmail:[C
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v7, v0, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    .line 569
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 571
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New email length too long, newemail length"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",limit is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 575
    .end local v2           #clipEmails:[Ljava/lang/String;
    .end local v7           #newCharEmail:[C
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 546
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_8

    .line 548
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v17

    if-gez v17, :cond_8

    .line 549
    const-string v17, "don\'t have free email record, and reset email"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 551
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    .line 552
    .local v4, emptyEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v4, v17

    .line 553
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    .line 555
    const/16 v17, 0x0

    aget-object v10, v11, v17

    .line 559
    .end local v4           #emptyEmails:[Ljava/lang/String;
    :cond_8
    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, -0x2

    .line 560
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Email type2 ... emailInfo.recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    .end local v3           #emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v8           #newEmail:Ljava/lang/String;
    .end local v9           #newEmails:[Ljava/lang/String;
    .end local v12           #oldEmail:Ljava/lang/String;
    .end local v13           #oldEmails:[Ljava/lang/String;
    .end local v16           #recLen:I
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "This PBR: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "doesn\'t support EMAIL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 581
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private verifyIap(ILcom/android/internal/telephony/AdnRecord;)Z
    .locals 4
    .parameter "pbrIndex"
    .parameter "newAdn"

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v1

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 397
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 400
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    const/4 v1, 0x1

    goto :goto_0

    .line 404
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This PBR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doesn\'t have EFIAP, so doesn\'t support type2 ef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifyInput(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 5
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    const/4 v1, 0x1

    .line 615
    :goto_0
    return v1

    .line 590
    :cond_0
    const/4 v1, 0x1

    .line 592
    .local v1, finalVerifyResult:Z
    const/4 v2, 0x1

    .line 594
    .local v2, tmpVerifyResult:Z
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 595
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyAdn(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v2

    .line 598
    :cond_1
    if-nez v2, :cond_2

    move v1, v3

    .line 600
    :cond_2
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 601
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyAnr(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v2

    .line 604
    :cond_3
    if-nez v2, :cond_4

    move v1, v3

    .line 607
    :cond_4
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, emails:[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    aget-object v4, v0, v3

    if-eqz v4, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 609
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyEmail(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v2

    .line 612
    :cond_5
    if-nez v2, :cond_6

    move v1, v3

    .line 615
    :cond_6
    goto :goto_0
.end method

.method private writeADNFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 17
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 674
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, newname:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 677
    .local v12, newnumber:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    .line 678
    .local v13, oldname:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v14

    .line 680
    .local v14, oldnumber:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    const/4 v2, 0x1

    .line 720
    :goto_0
    return v2

    .line 686
    :cond_0
    const/4 v2, 0x0

    aget v4, p1, v2

    .line 687
    .local v4, usimAdnEf:I
    const/4 v2, 0x1

    aget v5, p1, v2

    .line 688
    .local v5, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v16, p1, v2

    .line 689
    .local v16, recordIndexInEF:I
    const/4 v2, 0x3

    aget v10, p1, v2

    .line 691
    .local v10, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v15, p1, v2

    .line 694
    .local v15, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_3

    .line 695
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    add-int/lit8 v6, v16, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v10, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 704
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 707
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 712
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    .line 713
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAdnExtNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    .line 717
    :cond_1
    :goto_3
    const-string v2, "update adn sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 720
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto :goto_0

    .line 699
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    add-int/lit8 v6, v16, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v10, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 708
    :catch_0
    move-exception v9

    .line 709
    .local v9, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeADNFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 714
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    .line 715
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    goto :goto_3
.end method

.method private writeANRFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 20
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 725
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v13

    .line 726
    .local v13, newanr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v14

    .line 728
    .local v14, oldanr:Ljava/lang/String;
    if-eqz v14, :cond_0

    if-eqz v13, :cond_0

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    :cond_0
    const/4 v2, 0x1

    .line 785
    :goto_0
    return v2

    .line 733
    :cond_1
    const/4 v2, 0x0

    aget v18, p1, v2

    .line 734
    .local v18, usimAdnEf:I
    const/4 v2, 0x1

    aget v19, p1, v2

    .line 735
    .local v19, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v17, p1, v2

    .line 736
    .local v17, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .line 738
    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v15, p1, v2

    .line 743
    .local v15, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 745
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 746
    .local v10, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 747
    :cond_4
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 751
    .local v3, efid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 752
    .local v11, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v11, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    .line 754
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v8

    .line 755
    .local v8, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v8, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    .line 757
    :cond_6
    iget v0, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v16, v0

    .line 758
    .local v16, recSize:I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(Ljava/lang/String;I)[B

    move-result-object v5

    .line 761
    .local v5, data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    add-int/lit8 v4, v17, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 764
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 767
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_9

    .line 773
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    .line 778
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_8

    .line 779
    const-string v2, "failed update AnrT1 file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 783
    :cond_8
    const-string v2, "update anr sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto/16 :goto_0

    .line 768
    :catch_0
    move-exception v9

    .line 769
    .local v9, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeANRFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 774
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_7

    .line 775
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const-string v4, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    goto :goto_2
.end method

.method private writeEmailFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 23
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 905
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v14

    .line 906
    .local v14, newemails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v13, v14, v2

    .line 908
    .local v13, newemail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v16

    .line 909
    .local v16, oldemails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v15, v16, v2

    .line 912
    .local v15, oldemail:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->stringCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    const-string v2, "stringCompare: email is same, not need update"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .line 918
    const/4 v2, 0x1

    .line 1003
    :goto_0
    return v2

    .line 921
    :cond_0
    const/4 v2, 0x0

    aget v21, p1, v2

    .line 922
    .local v21, usimAdnEf:I
    const/4 v2, 0x1

    aget v22, p1, v2

    .line 923
    .local v22, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v19, p1, v2

    .line 924
    .local v19, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .line 926
    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v17, p1, v2

    .line 929
    .local v17, pbrIndex:I
    const/4 v4, -0x1

    .line 930
    .local v4, emailRecordNumber:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_1

    .line 931
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeIapFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I

    move-result v4

    .line 936
    :goto_1
    const/4 v2, -0x1

    if-ne v4, v2, :cond_2

    .line 937
    const/4 v2, 0x0

    goto :goto_0

    .line 933
    :cond_1
    add-int/lit8 v4, v19, 0x1

    goto :goto_1

    .line 940
    :cond_2
    if-nez v4, :cond_3

    .line 941
    const-string v2, "should not run at here, needn\'t write email"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 942
    const/4 v2, 0x1

    goto :goto_0

    .line 948
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 950
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 951
    .local v11, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v11, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    .line 955
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 956
    .local v10, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_7

    const/4 v2, 0x0

    goto :goto_0

    .line 958
    :cond_7
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 959
    .local v3, efid:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v9

    .line 960
    .local v9, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v9, :cond_8

    .line 961
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 964
    :cond_8
    iget v0, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    .line 967
    .local v18, recSize:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(Ljava/lang/String;IZ)[B

    move-result-object v5

    .line 970
    .local v5, data:[B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_9

    .line 973
    const/16 v20, 0xff

    .line 974
    .local v20, sfi:I
    add-int/lit8 v2, v18, -0x2

    move/from16 v0, v20

    int-to-byte v6, v0

    aput-byte v6, v5, v2

    .line 976
    add-int/lit8 v2, v18, -0x1

    add-int/lit8 v6, v19, 0x1

    int-to-byte v6, v6

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 981
    .end local v20           #sfi:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v6, 0x0

    const/16 v7, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 984
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 987
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_a

    .line 994
    const-string v2, "failed update EMAIL file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 999
    :cond_a
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatelocalEmailRecord(II[B)Z

    .line 1001
    const-string v2, "update EMAIL sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto/16 :goto_0

    .line 988
    :catch_0
    move-exception v8

    .line 989
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeEmailFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private writeExt1FileAndWait(IILjava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "index"
    .parameter "extNumber"

    .prologue
    const/4 v7, 0x0

    .line 652
    add-int/lit8 v0, p2, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v7

    .line 669
    :goto_0
    return v0

    .line 654
    :cond_1
    const/16 v0, 0xd

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildExtString(Ljava/lang/String;I)[B

    move-result-object v3

    .line 655
    .local v3, data:[B
    aget-byte v0, v3, v7

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x0

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 661
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto :goto_0

    .line 665
    :catch_0
    move-exception v6

    .line 666
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "Interrupted Exception in writeExt1FileAndWait"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeIapFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I
    .locals 23
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 790
    const/16 v20, 0x0

    .line 792
    .local v20, recordNumber:I
    const/4 v2, 0x0

    aget v21, p1, v2

    .line 793
    .local v21, usimAdnEf:I
    const/4 v2, 0x1

    aget v22, p1, v2

    .line 794
    .local v22, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v19, p1, v2

    .line 795
    .local v19, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .line 797
    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v18, p1, v2

    .line 802
    .local v18, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 884
    :goto_0
    return v2

    .line 804
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 805
    .local v9, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v9, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    .line 808
    :cond_2
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 809
    const/4 v2, -0x1

    goto :goto_0

    .line 812
    :cond_3
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 814
    .local v3, efid:I
    const/4 v13, -0x1

    .line 815
    .local v13, location:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 816
    .local v11, iaprecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v11, :cond_4

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t get email file record for PBR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 818
    const/4 v2, -0x1

    goto :goto_0

    .line 821
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v0, v2, :cond_5

    .line 822
    const/4 v2, -0x1

    goto :goto_0

    .line 825
    :cond_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 827
    .local v5, iaprecode:[B
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 828
    .local v15, newEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v14, v15, v2

    .line 830
    .local v14, newEmail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v17

    .line 831
    .local v17, oldEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v16, v17, v2

    .line 835
    .local v16, oldEmail:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 837
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, v5, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    .line 839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    const/4 v4, -0x1

    aput-byte v4, v5, v2

    .line 864
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write iap, get email record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    add-int/lit8 v4, v19, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 869
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 872
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_6

    .line 878
    const-string v2, "failed update IAP file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 882
    :cond_6
    const-string v2, "update iap sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move/from16 v2, v20

    .line 884
    goto/16 :goto_0

    .line 840
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 842
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v10

    .line 843
    .local v10, freeEmailLocation:I
    if-gez v10, :cond_8

    .line 844
    const-string v2, "no empty email location"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 845
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 848
    :cond_8
    move/from16 v20, v10

    .line 850
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    and-int/lit16 v4, v10, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    goto :goto_1

    .line 854
    .end local v10           #freeEmailLocation:I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, v5, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t write iap, get email record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 857
    const/16 v2, 0xff

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    .line 858
    const-string v2, "something wrong"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 859
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move/from16 v2, v20

    .line 861
    goto/16 :goto_0

    .line 873
    :catch_0
    move-exception v8

    .line 874
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeIapFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;)[I
    .locals 1
    .parameter "adn"

    .prologue
    .line 1446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;I)[I

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1905
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 2086
    :goto_0
    :pswitch_0
    return-void

    .line 1907
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1908
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    .line 1909
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1911
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1912
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1913
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1916
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v8, "Loading USIM ADN records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1917
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1918
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    .line 1919
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1920
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current number of records: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1922
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1923
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1924
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .line 1927
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v8, "Loading USIM IAP records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1928
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1929
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    .line 1930
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1932
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1933
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1934
    monitor-exit v9

    goto :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v8

    .line 1937
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v8, "Loading USIM Email records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1938
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1939
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 1940
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1942
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    .line 1946
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1947
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1948
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v8

    .line 1953
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v8, "Loading USIM ANR records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1954
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1955
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    .line 1956
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 1959
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1960
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1961
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v8

    .line 1964
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v8, "Loading USIM Ext1 records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1965
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1966
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    .line 1967
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 1970
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1971
    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1972
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v8

    .line 1977
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1978
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1979
    .local v6, pbrIndex:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1981
    .local v2, efTag:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_7

    .line 1982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get record size failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2001
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2002
    :try_start_6
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 2003
    monitor-exit v9

    goto/16 :goto_0

    :catchall_6
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v8

    .line 1984
    :cond_7
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 1990
    .local v7, recordSize:[I
    new-instance v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 1991
    .local v1, efInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    .line 1992
    aget v8, v7, v10

    iput v8, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    .line 1995
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1996
    .local v5, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_6

    .line 1997
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2008
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #efInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v2           #efTag:I
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 2009
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 2011
    .restart local v6       #pbrIndex:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_9

    .line 2012
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get EFANR record size failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2031
    :cond_8
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2032
    :try_start_7
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 2033
    monitor-exit v9

    goto/16 :goto_0

    :catchall_7
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v8

    .line 2014
    :cond_9
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 2020
    .restart local v7       #recordSize:[I
    new-instance v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 2021
    .local v3, efanrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    .line 2022
    aget v8, v7, v10

    iput v8, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    .line 2025
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2026
    .restart local v5       #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_8

    .line 2027
    const/16 v8, 0xc4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2038
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #efanrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 2039
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 2041
    .restart local v6       #pbrIndex:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_b

    .line 2042
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get email record size failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2061
    :cond_a
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2062
    :try_start_8
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 2063
    monitor-exit v9

    goto/16 :goto_0

    :catchall_8
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v8

    .line 2044
    :cond_b
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 2050
    .restart local v7       #recordSize:[I
    new-instance v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 2051
    .local v4, efemailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    .line 2052
    aget v8, v7, v10

    iput v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    .line 2055
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2056
    .restart local v5       #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_a

    .line 2057
    const/16 v8, 0xca

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2071
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #efemailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2072
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_c

    .line 2073
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 2079
    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2080
    :try_start_9
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 2081
    monitor-exit v9

    goto/16 :goto_0

    :catchall_9
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v8

    .line 2075
    :cond_c
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 2076
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",exception is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1380
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    .line 1382
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1383
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    .line 1443
    :goto_0
    return-object v3

    .line 1384
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1388
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_2

    .line 1389
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1393
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_4

    :cond_3
    monitor-exit v4

    goto :goto_0

    .line 1396
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1399
    .local v2, numRecs:I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    .line 1402
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1AndWait()V

    .line 1405
    const/4 v0, 0x0

    .line 1407
    .local v0, adnBase:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    .line 1409
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1410
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 1413
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    aput v5, v3, v1

    .line 1414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adn size of rec "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1416
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v3, v3, v1

    if-nez v3, :cond_5

    .line 1417
    const-string v3, "Read 0 ADN, no need to read Email, ANR..."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1409
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1425
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 1427
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readANRFileAndWait(II)V

    .line 1429
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1430
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    .line 1431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdnBase:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1437
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/AdnRecordCache;->setEmailCapacity(I)V

    .line 1438
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeEmail()I

    move-result v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/AdnRecordCache;->setFreeEmail(I)V

    .line 1439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdnCache.setEmailCapacity: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailCapacity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " , freeEmail: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->getFreeEmail()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1442
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method parseType1AnrFile(I)V
    .locals 6
    .parameter "numRecs"

    .prologue
    .line 1245
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    .line 1246
    const/4 v1, 0x0

    .line 1247
    .local v1, anrRec:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_2

    .line 1249
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anrRec:[B
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    .restart local v1       #anrRec:[B
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseANR([BZ)Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, anr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1258
    :cond_0
    const-string v0, ""

    .line 1261
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1250
    .end local v0           #anr:Ljava/lang/String;
    .end local v1           #anrRec:[B
    :catch_0
    move-exception v2

    .line 1251
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Improper ICC card: No anr record for ADN, break,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .line 1263
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .parameter "numRecs"

    .prologue
    .line 1801
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 1802
    const/4 v3, 0x0

    .line 1803
    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 1805
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    .restart local v3       #emailRec:[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 1812
    .local v0, adnRecNum:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 1803
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1806
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .line 1807
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .line 1831
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    .line 1816
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 1818
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1823
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1824
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 1825
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1827
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 181
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    const-string v0, "gsm.mot.usim.support.anr"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "gsm.mot.usim.support.email"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 2
    .parameter "index"
    .parameter "newAdn"

    .prologue
    .line 1578
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1579
    :cond_0
    const-string v0, "oops,invalid index"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1584
    :goto_0
    return-void

    .line 1582
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnByindex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 19
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 1042
    const/16 v17, 0x1

    .line 1043
    .local v17, finalResult:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1044
    const/4 v7, 0x0

    .line 1045
    .local v7, adnLocationInfo:[I
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1047
    const-string v2, "find location for inserting one new contact"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1048
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;I)[I

    move-result-object v7

    .line 1049
    if-nez v7, :cond_2

    .line 1050
    const-string v2, "there is no email slot"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "space is full for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1052
    const/16 v17, 0x0

    .line 1097
    :cond_0
    :goto_0
    if-eqz v17, :cond_1

    .line 1099
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1100
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    .line 1102
    :cond_1
    monitor-exit v18

    .line 1103
    return-void

    :cond_2
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    .line 1054
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto :goto_0

    .line 1056
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmailsNull([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1062
    const-string v2, "find location for updating the contact to add new email"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1063
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;I)[I

    move-result-object v7

    .line 1064
    if-eqz v7, :cond_6

    .line 1065
    const/4 v2, 0x4

    aget v2, v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1067
    const-string v2, "oldAdn and free email space are at the same pbr record, so update directly"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    .line 1068
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto :goto_0

    .line 1070
    :cond_4
    const-string v2, "In oldAdn pbr record, there is no email space"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1071
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;I)[I

    move-result-object v15

    .line 1072
    .local v15, adnLocationInfo_email:[I
    if-eqz v15, :cond_5

    .line 1073
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1074
    .local v16, emails:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v16, v2

    .line 1075
    new-instance v5, Lcom/android/internal/telephony/AdnRecord;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-direct {v5, v2, v3, v0, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .local v5, emptyAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    .line 1077
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    .line 1078
    if-eqz v17, :cond_0

    .line 1079
    move-object v7, v15

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object v10, v5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v7

    move-object/from16 v14, p5

    .line 1080
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto/16 :goto_0

    .line 1083
    .end local v5           #emptyAdn:Lcom/android/internal/telephony/AdnRecord;
    .end local v16           #emails:[Ljava/lang/String;
    :cond_5
    const-string v2, "Can\'t find empty space for email"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find empty space for email "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1085
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1089
    .end local v15           #adnLocationInfo_email:[I
    :cond_6
    const-string v2, "Can\'t find oldAdn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find oldAdn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1091
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1094
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;I)[I

    move-result-object v7

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v7

    move-object/from16 v14, p5

    .line 1095
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByLocationInfo(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;[ILandroid/os/Message;)Z

    move-result v17

    goto/16 :goto_0

    .line 1102
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
