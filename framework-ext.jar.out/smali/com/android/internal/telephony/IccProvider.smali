.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final ADN2:I = 0xc9

.field private static final ADNCAPACITY:I = 0x65

.field private static final ADNCAPACITY2:I = 0xcd

.field private static final CAPABILITYPBK:I = 0x68

.field private static final CAPABILITYPBK2:I = 0xd0

.field private static final DBG:Z = true

.field private static final EMAILCAPACITY:I = 0x67

.field private static final EMAILCAPACITY2:I = 0xcf

.field private static final FDN:I = 0x2

.field private static final FDN2:I = 0xca

.field private static final FREEADN:I = 0x64

.field private static final FREEADN2:I = 0xcc

.field private static final FREEEMAIL:I = 0x66

.field private static final FREEEMAIL2:I = 0xce

.field private static final SDN:I = 0x3

.field private static final SDN2:I = 0xcb

.field static final SORT_BY_NAME:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final SORT_BY_NUMBER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final STR_ANR:Ljava/lang/String; = "number2"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher; = null

.field static andPattern:Ljava/util/regex/Pattern; = null

.field static keyPattern:Ljava/util/regex/Pattern; = null

.field private static final strMode:Ljava/lang/String; = "(tag|number2|number|emails|pin2)"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "number2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 109
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeadn"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adncapacity"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeemail"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "emailcapacity"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capability/pbk"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn2"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn2"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn2"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeadn2"

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adncapacity2"

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeemail2"

    const/16 v3, 0xce

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "emailcapacity2"

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capability/pbk2"

    const/16 v3, 0xd0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/IccProvider$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccProvider$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->SORT_BY_NAME:Ljava/util/Comparator;

    .line 153
    new-instance v0, Lcom/android/internal/telephony/IccProvider$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccProvider$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->SORT_BY_NUMBER:Ljava/util/Comparator;

    .line 369
    const-string v0, "AND *(tag|number2|number|emails|pin2) *="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->andPattern:Ljava/util/regex/Pattern;

    .line 370
    const-string v0, "(tag|number2|number|emails|pin2)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->keyPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 14
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "number2"
    .parameter "pin2"
    .parameter "isDefault"

    .prologue
    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",number2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 631
    const/4 v13, 0x0

    .line 639
    .local v13, success:Z
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 640
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 642
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 651
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 652
    return v13

    .line 648
    :catch_0
    move-exception v12

    .line 649
    .local v12, ex:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    .end local v12           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 14
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "number2"
    .parameter "emails"
    .parameter "pin2"
    .parameter "isDefault"

    .prologue
    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 689
    const/4 v13, 0x0

    .line 692
    .local v13, success:Z
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 693
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 699
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v5, ""

    :goto_0
    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p6

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 711
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 712
    return v13

    .line 699
    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget-object v5, p5, v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 708
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v12

    .line 709
    .local v12, ex:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 706
    .end local v12           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getAdnCapacity(Z)I
    .locals 5
    .parameter "isDefault"

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, capacity:I
    const-string v3, "getAdnCapacity"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 800
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 801
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 802
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnCapacity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 809
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnCapacity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 810
    return v0

    .line 806
    :catch_0
    move-exception v1

    .line 807
    .local v1, ex:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    .end local v1           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getEmailCapacity(Z)I
    .locals 5
    .parameter "isDefault"

    .prologue
    .line 868
    const/4 v0, 0x0

    .line 871
    .local v0, capacity:I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 872
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 873
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailCapacity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 880
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailCapacity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 881
    return v0

    .line 877
    :catch_0
    move-exception v1

    .line 878
    .local v1, ex:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 875
    .end local v1           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getFreeAdn(Z)I
    .locals 5
    .parameter "isDefault"

    .prologue
    .line 778
    const/4 v1, 0x0

    .line 779
    .local v1, freeAdn:I
    const-string v3, "getFreeAdn"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 782
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 783
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 784
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getFreeAdn()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 791
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFreeAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 792
    return v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getFreeEmail(Z)I
    .locals 5
    .parameter "isDefault"

    .prologue
    .line 851
    const/4 v1, 0x0

    .line 854
    .local v1, freeEmail:I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 855
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 856
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getFreeEmail()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 863
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFreeEmail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 864
    return v1

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 858
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private final getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1
    .parameter "isDefault"

    .prologue
    .line 902
    if-eqz p1, :cond_0

    const-string v0, "simphonebook"

    :goto_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "simphonebook2"

    goto :goto_0
.end method

.method private static final isDefaultUri(I)Z
    .locals 1
    .parameter "match"

    .prologue
    .line 886
    packed-switch p0, :pswitch_data_0

    .line 897
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 895
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isEmptyStringArray([Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 506
    if-nez p1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    array-length v2, p1

    if-eqz v2, :cond_0

    array-length v2, p1

    if-ne v2, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 512
    goto :goto_0
.end method

.method private loadFromEf(ILjava/lang/String;Z)Landroid/database/MatrixCursor;
    .locals 11
    .parameter "efType"
    .parameter "sort"
    .parameter "isDefault"

    .prologue
    .line 579
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadFromEf: efType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 581
    const/4 v3, 0x0

    .line 583
    .local v3, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v8

    .line 584
    .local v8, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v8, :cond_0

    .line 585
    invoke-interface {v8, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 592
    .end local v8           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    .line 594
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v2, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 596
    .local v0, N:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adnRecords.size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 597
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 598
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v9, v2, v6}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;I)V

    .line 597
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 589
    .end local v0           #N:I
    .end local v2           #adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v6           #i:I
    :catch_0
    move-exception v5

    .line 590
    .local v5, ex:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    .end local v5           #ex:Ljava/lang/SecurityException;
    .restart local v0       #N:I
    .restart local v2       #adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .restart local v6       #i:I
    :cond_1
    if-eqz p2, :cond_2

    .line 602
    const-string v9, "name"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 603
    sget-object v9, Lcom/android/internal/telephony/IccProvider;->SORT_BY_NAME:Ljava/util/Comparator;

    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 609
    :cond_2
    :goto_2
    const-string v9, "loadFromEf: return results"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 610
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v4, v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 611
    .local v4, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 612
    .local v1, adn:[Ljava/lang/Object;
    invoke-virtual {v4, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 604
    .end local v1           #adn:[Ljava/lang/Object;
    .end local v4           #cursor:Landroid/database/MatrixCursor;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v9, "number"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 605
    sget-object v9, Lcom/android/internal/telephony/IccProvider;->SORT_BY_NUMBER:Ljava/util/Comparator;

    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 618
    .end local v0           #N:I
    .end local v2           #adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v6           #i:I
    :cond_4
    const-string v9, "IccProvider"

    const-string v10, "Cannot load ADN records"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v4, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_5
    return-object v4

    .line 587
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;I)V
    .locals 12
    .parameter "record"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p2, cursor:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 725
    const/4 v10, 0x5

    new-array v2, v10, [Ljava/lang/Object;

    .line 726
    .local v2, contact:[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 729
    .local v8, number:Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v0, v2, v10

    .line 730
    const/4 v10, 0x1

    aput-object v8, v2, v10

    .line 731
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 734
    .local v5, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v9

    .line 737
    .local v9, number2:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .local v4, emailString:Ljava/lang/StringBuilder;
    if-eqz v5, :cond_4

    .line 740
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v1, v6

    .line 743
    .local v3, email:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 740
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 747
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding email:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 753
    .end local v3           #email:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 756
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 758
    const/4 v10, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 766
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :goto_2
    const/4 v10, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v10

    .line 768
    const/4 v10, 0x4

    aput-object v9, v2, v10

    .line 771
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v2           #contact:[Ljava/lang/Object;
    .end local v4           #emailString:Ljava/lang/StringBuilder;
    .end local v5           #emails:[Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #number2:Ljava/lang/String;
    :cond_2
    return-void

    .line 760
    .restart local v0       #alphaTag:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #contact:[Ljava/lang/Object;
    .restart local v4       #emailString:Ljava/lang/StringBuilder;
    .restart local v5       #emails:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #number:Ljava/lang/String;
    .restart local v9       #number2:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v2, v10

    goto :goto_2

    .line 764
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_4
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v2, v10

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 815
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inVal"

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x1

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 350
    .local v0, len:I
    move-object v1, p1

    .line 355
    .local v1, retVal:Ljava/lang/String;
    if-le v0, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 356
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 360
    :cond_0
    return-object v1
.end method

.method private updateCapabilityPbk([Ljava/lang/Object;Z)V
    .locals 7
    .parameter "contact"
    .parameter "isDefault"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, capability:I
    const-string v3, "NO"

    aput-object v3, p1, v4

    .line 822
    const-string v3, "NO"

    aput-object v3, p1, v5

    .line 823
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    .line 824
    const-string v3, "NO"

    aput-object v3, p1, v6

    .line 825
    const-string v3, "updateCapabilityPbk"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 827
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 828
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_2

    .line 829
    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getCapabilityPbk()I

    move-result v0

    .line 831
    and-int/lit8 v3, v0, 0x2

    if-ne v3, v5, :cond_0

    .line 832
    const/4 v3, 0x1

    const-string v4, "YES"

    aput-object v4, p1, v3

    .line 834
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-ne v3, v6, :cond_1

    .line 835
    const/4 v3, 0x2

    const-string v4, "YES"

    aput-object v4, p1, v3

    .line 837
    :cond_1
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 838
    const/4 v3, 0x4

    const-string v4, "YES"

    aput-object v4, p1, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCapabilityPbk,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 847
    return-void

    .line 843
    :catch_0
    move-exception v1

    .line 844
    .local v1, ex:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 841
    .end local v1           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 14
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "oldEmail"
    .parameter "oldNumber2"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newEmail"
    .parameter "newNumber2"
    .parameter "pin2"
    .parameter "isDefault"

    .prologue
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldEmail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldNumber2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newEmail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newNumber2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 664
    const/4 v13, 0x0

    .line 667
    .local v13, success:Z
    :try_start_0
    move/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIIccPhoneBook(Z)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 668
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 670
    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 679
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 680
    return v13

    .line 676
    :catch_0
    move-exception v12

    .line 677
    .local v12, ex:Ljava/lang/SecurityException;
    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    .end local v12           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 376
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 378
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 379
    .local v19, match:I
    sparse-switch v19, :sswitch_data_0

    .line 391
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot insert into URL: "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :sswitch_0
    const/16 v3, 0x6f3a

    .line 396
    .local v3, efType:I
    :goto_0
    const/4 v4, 0x0

    .line 397
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 398
    .local v5, number:Ljava/lang/String;
    const/4 v7, 0x0

    .line 400
    .local v7, emails:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 402
    .local v6, number2:Ljava/lang/String;
    const/4 v8, 0x0

    .line 403
    .local v8, pin2:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->andPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 404
    .local v18, m:Ljava/util/regex/Matcher;
    new-instance v25, Ljava/util/Vector;

    invoke-direct/range {v25 .. v25}, Ljava/util/Vector;-><init>()V

    .line 405
    .local v25, vec:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 406
    .local v13, index:I
    const/16 v16, 0x0

    .line 407
    .local v16, lastindex:I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, currentStr:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 410
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    add-int v16, v13, v2

    .line 412
    goto :goto_1

    .line 387
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #number2:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #pin2:Ljava/lang/String;
    .end local v10           #currentStr:Ljava/lang/String;
    .end local v13           #index:I
    .end local v16           #lastindex:I
    .end local v18           #m:Ljava/util/regex/Matcher;
    .end local v25           #vec:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :sswitch_1
    const/16 v3, 0x6f3b

    .line 388
    .restart local v3       #efType:I
    goto :goto_0

    .line 417
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #number2:Ljava/lang/String;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v8       #pin2:Ljava/lang/String;
    .restart local v13       #index:I
    .restart local v16       #lastindex:I
    .restart local v18       #m:Ljava/util/regex/Matcher;
    .restart local v25       #vec:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 418
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_1
    const/16 v17, 0x0

    .line 422
    .local v17, lastpoint:I
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 423
    .local v11, i:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 424
    .local v20, myStr:Ljava/lang/String;
    const-string v14, ""

    .line 425
    .local v14, key:Ljava/lang/String;
    const-string v24, ""

    .line 426
    .local v24, val:Ljava/lang/String;
    const-string v2, "="

    const/4 v9, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v21

    .line 427
    .local v21, pair:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v9, 0x2

    if-eq v2, v9, :cond_3

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolve: bad whereClause parameter: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 430
    goto :goto_2

    .line 433
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->keyPattern:Ljava/util/regex/Pattern;

    const/4 v9, 0x0

    aget-object v9, v21, v9

    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 434
    .local v15, keyMather:Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 435
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 441
    const/4 v2, 0x1

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 442
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 443
    const-string v2, "tag"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 451
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v9, 0x1

    if-le v2, v9, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x27

    if-ne v2, v9, :cond_5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x27

    if-ne v2, v9, :cond_5

    .line 453
    const-string v2, "GSM"

    const-string v9, "The name embraced by a pair of single quotes"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 437
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolve: bad whereClause key: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v21, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 439
    goto/16 :goto_2

    .line 458
    :cond_5
    const-string v2, "GSM"

    const-string v9, "name not embraced by a pair of single quotes, need not trim white space"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x1

    aget-object v24, v21, v2

    goto :goto_3

    .line 465
    :cond_6
    const-string v2, "number"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 468
    :cond_7
    const-string v2, "number2"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 471
    :cond_8
    const-string v2, "emails"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 475
    .local v22, strEmail:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 476
    const/4 v2, 0x0

    aput-object v22, v7, v2

    goto/16 :goto_2

    .line 478
    .end local v22           #strEmail:Ljava/lang/String;
    :cond_9
    const-string v2, "pin2"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 485
    .end local v11           #i:Ljava/lang/Integer;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #keyMather:Ljava/util/regex/Matcher;
    .end local v20           #myStr:Ljava/lang/String;
    .end local v21           #pair:[Ljava/lang/String;
    .end local v24           #val:Ljava/lang/String;
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->isEmptyStringArray([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 488
    const/4 v2, 0x0

    .line 502
    :goto_4
    return v2

    .line 491
    :cond_b
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 492
    const/4 v2, 0x0

    goto :goto_4

    .line 496
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/IccProvider;->isDefaultUri(I)Z

    move-result v9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v23

    .line 498
    .local v23, success:Z
    if-nez v23, :cond_d

    .line 499
    const/4 v2, 0x0

    goto :goto_4

    .line 502
    :cond_d
    const/4 v2, 0x1

    goto :goto_4

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 258
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    .line 267
    :goto_0
    return-object v0

    :sswitch_1
    const-string v0, "vnd.android.cursor.dir/sim2-contact"

    goto :goto_0

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 278
    const/4 v6, 0x0

    .line 280
    .local v6, pin2:Ljava/lang/String;
    const-string v0, "insert"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 283
    .local v9, match:I
    sparse-switch v9, :sswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot insert into URL: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :sswitch_0
    const/16 v1, 0x6f3a

    .line 300
    .local v1, efType:I
    :goto_0
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, tag:Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, number:Ljava/lang/String;
    const-string v0, "emails"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, email:Ljava/lang/String;
    const-string v0, "number2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, number2:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/IccProvider;->isDefaultUri(I)Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 311
    .local v11, success:Z
    if-nez v11, :cond_0

    .line 312
    const/4 v10, 0x0

    .line 345
    :goto_1
    return-object v10

    .line 291
    .end local v1           #efType:I
    .end local v2           #tag:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #number2:Ljava/lang/String;
    .end local v11           #success:Z
    :sswitch_1
    const/16 v1, 0x6f3b

    .line 292
    .restart local v1       #efType:I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    goto :goto_0

    .line 315
    .restart local v2       #tag:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #email:Ljava/lang/String;
    .restart local v5       #number2:Ljava/lang/String;
    .restart local v11       #success:Z
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "content://icc/"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .local v8, buf:Ljava/lang/StringBuilder;
    sparse-switch v9, :sswitch_data_1

    .line 335
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 345
    .local v10, resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 318
    .end local v10           #resultUri:Landroid/net/Uri;
    :sswitch_2
    const-string v0, "adn/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 322
    :sswitch_3
    const-string v0, "fdn/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 326
    :sswitch_4
    const-string v0, "adn2/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 330
    :sswitch_5
    const-string v0, "fdn2/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 316
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, contact:[Ljava/lang/Object;
    const-string v4, "IccProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entering icc provider query = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v4, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 172
    .local v2, match:I
    invoke-static {v2}, Lcom/android/internal/telephony/IccProvider;->isDefaultUri(I)Z

    move-result v1

    .line 173
    .local v1, isDefaultUri:Z
    sparse-switch v2, :sswitch_data_0

    .line 250
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :sswitch_0
    const/16 v4, 0x6f3a

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILjava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 252
    .local v3, results:Landroid/database/MatrixCursor;
    :goto_0
    return-object v3

    .line 181
    .end local v3           #results:Landroid/database/MatrixCursor;
    :sswitch_1
    const/16 v4, 0x6f3b

    invoke-direct {p0, v4, p5, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILjava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 182
    .restart local v3       #results:Landroid/database/MatrixCursor;
    goto :goto_0

    .line 186
    .end local v3           #results:Landroid/database/MatrixCursor;
    :sswitch_2
    const/16 v4, 0x6f49

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILjava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 187
    .restart local v3       #results:Landroid/database/MatrixCursor;
    goto :goto_0

    .line 192
    .end local v3           #results:Landroid/database/MatrixCursor;
    :sswitch_3
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 193
    .restart local v3       #results:Landroid/database/MatrixCursor;
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    .line 194
    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const-string v4, "freeadn"

    :goto_1
    aput-object v4, v0, v5

    .line 195
    const/4 v4, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->getFreeAdn(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 196
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 197
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 198
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 199
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    const-string v4, "freeadn2"

    goto :goto_1

    .line 203
    .end local v3           #results:Landroid/database/MatrixCursor;
    :sswitch_4
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 204
    .restart local v3       #results:Landroid/database/MatrixCursor;
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    .line 205
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    const-string v4, "adncapacity"

    :goto_2
    aput-object v4, v0, v5

    .line 206
    const/4 v4, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->getAdnCapacity(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 207
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 208
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 209
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 210
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_1
    const-string v4, "adncapacity2"

    goto :goto_2

    .line 216
    .end local v3           #results:Landroid/database/MatrixCursor;
    :sswitch_5
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 217
    .restart local v3       #results:Landroid/database/MatrixCursor;
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    .line 218
    const/4 v5, 0x0

    if-eqz v1, :cond_2

    const-string v4, "freeemail"

    :goto_3
    aput-object v4, v0, v5

    .line 219
    const/4 v4, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->getFreeEmail(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 220
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 221
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 222
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 223
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 218
    :cond_2
    const-string v4, "freeemail2"

    goto :goto_3

    .line 228
    .end local v3           #results:Landroid/database/MatrixCursor;
    :sswitch_6
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 229
    .restart local v3       #results:Landroid/database/MatrixCursor;
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    .line 230
    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const-string v4, "emailcapacity"

    :goto_4
    aput-object v4, v0, v5

    .line 231
    const/4 v4, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->getEmailCapacity(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 232
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 233
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 234
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 235
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 230
    :cond_3
    const-string v4, "emailcapacity2"

    goto :goto_4

    .line 241
    .end local v3           #results:Landroid/database/MatrixCursor;
    :sswitch_7
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 242
    .restart local v3       #results:Landroid/database/MatrixCursor;
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    .line 243
    const/4 v5, 0x0

    if-eqz v1, :cond_4

    const-string v4, "capability.pbk"

    :goto_5
    aput-object v4, v0, v5

    .line 244
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/IccProvider;->updateCapabilityPbk([Ljava/lang/Object;Z)V

    .line 245
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_4
    const-string v4, "capability.pbk2"

    goto :goto_5

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0xce -> :sswitch_5
        0xcf -> :sswitch_6
        0xd0 -> :sswitch_7
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 520
    const/4 v11, 0x0

    .line 522
    .local v11, pin2:Ljava/lang/String;
    const-string v1, "update"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 525
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 526
    .local v14, match:I
    sparse-switch v14, :sswitch_data_0

    .line 539
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot insert into URL: "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :sswitch_0
    const/16 v2, 0x6f3a

    .line 543
    .local v2, efType:I
    :goto_0
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, tag:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, number:Ljava/lang/String;
    const/4 v13, 0x0

    .line 548
    .local v13, emails:[Ljava/lang/String;
    const-string v5, ""

    .line 549
    .local v5, email:Ljava/lang/String;
    const-string v1, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 550
    const-string v6, ""

    .line 551
    .local v6, number2:Ljava/lang/String;
    const-string v1, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 554
    const-string v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 555
    .local v7, newTag:Ljava/lang/String;
    const-string v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 556
    .local v8, newNumber:Ljava/lang/String;
    const/4 v15, 0x0

    .line 559
    .local v15, newEmails:[Ljava/lang/String;
    const-string v9, ""

    .line 560
    .local v9, newEmail:Ljava/lang/String;
    const-string v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 561
    const-string v10, ""

    .line 562
    .local v10, newNumber2:Ljava/lang/String;
    const-string v1, "newNumber2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 567
    invoke-static {v14}, Lcom/android/internal/telephony/IccProvider;->isDefaultUri(I)Z

    move-result v12

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 571
    .local v16, success:Z
    if-nez v16, :cond_0

    .line 572
    const/4 v1, 0x0

    .line 575
    :goto_1
    return v1

    .line 534
    .end local v2           #efType:I
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #email:Ljava/lang/String;
    .end local v6           #number2:Ljava/lang/String;
    .end local v7           #newTag:Ljava/lang/String;
    .end local v8           #newNumber:Ljava/lang/String;
    .end local v9           #newEmail:Ljava/lang/String;
    .end local v10           #newNumber2:Ljava/lang/String;
    .end local v13           #emails:[Ljava/lang/String;
    .end local v15           #newEmails:[Ljava/lang/String;
    .end local v16           #success:Z
    :sswitch_1
    const/16 v2, 0x6f3b

    .line 535
    .restart local v2       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 536
    goto :goto_0

    .line 575
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #email:Ljava/lang/String;
    .restart local v6       #number2:Ljava/lang/String;
    .restart local v7       #newTag:Ljava/lang/String;
    .restart local v8       #newNumber:Ljava/lang/String;
    .restart local v9       #newEmail:Ljava/lang/String;
    .restart local v10       #newNumber2:Ljava/lang/String;
    .restart local v13       #emails:[Ljava/lang/String;
    .restart local v15       #newEmails:[Ljava/lang/String;
    .restart local v16       #success:Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method
