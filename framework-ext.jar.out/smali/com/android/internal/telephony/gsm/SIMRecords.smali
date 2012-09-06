.class public Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CALL_MATCHING_CONFIG_FILE:Ljava/lang/String; = "/system/etc/call_matching.xml"

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final CSP_PLMN_MODE_ENABLED:I = 0x80

.field private static final CSP_PLMN_MODE_MASK:I = 0x80

.field private static final CSP_SGC_VAS:I = 0xc0

.field protected static final DBG:Z = true

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x22

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION:I = 0x24

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSIM_EUIMID_DONE:I = 0x26

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_EMAIL_GW_DONE:I = 0x23

.field protected static final EVENT_GET_ICCID_DONE:I = 0x4

.field protected static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_FROM_EF_DONE:I = 0x27

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN2_DONE:I = 0x25

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x32

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x33

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field protected static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field static final PROP_MAX_MATCH:Ljava/lang/String; = "gsm.sim.max.match"

.field static final PROP_MIN_MATCH:Ljava/lang/String; = "gsm.sim.min.match"

.field static final SPN_DISPLAY_RULE_OVERRIDE_ALWAYS_SHOW:I = 0x1

.field static final SPN_DISPLAY_RULE_OVERRIDE_FOLLOW_SIM:I = 0x0

.field static final SPN_DISPLAY_RULE_OVERRIDE_NEVER_SHOW:I = -0x1

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80


# instance fields
.field callForwardingEnabled:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field imsi:Ljava/lang/String;

.field isCspFileChanged:Z

.field isMncLengthValidationEnabled:Z

.field isNetworkManual:Z

.field isPlmnModeBitEnabled:Z

.field isPrevPlmnModeBitEnabled:Z

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCff:[B

.field mEfCfis:[B

.field private mSfEuimid:Ljava/lang/String;

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 235
    const/16 v0, 0x6b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "405025"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "405026"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "parent"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 118
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    .line 119
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPrevPlmnModeBitEnabled:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isNetworkManual:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 144
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 145
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 146
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 151
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 153
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 313
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const-string v2, "GSM"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 315
    new-instance v0, Lcom/android/internal/telephony/SmsRecordCache;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRecordCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    .line 318
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 319
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 321
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 324
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 331
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 338
    :cond_0
    const-string v0, "GSM"

    const-string v1, "getting isMncLengthValidationEnabled on SIMRecords(GSMPhone p)!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    .line 342
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPrevPlmnModeBitEnabled:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isNetworkManual:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 141
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 144
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 145
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 146
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 151
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 153
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 275
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 278
    new-instance v0, Lcom/android/internal/telephony/SmsRecordCache;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRecordCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    .line 281
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 282
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 284
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 287
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->activateMe()V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 295
    const-string v0, "GSM"

    const-string v1, "getting isMncLengthValidationEnabled on SIMRecords(GSMPhone p)!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    .line 299
    return-void
.end method

.method constructor <init>(ZZLcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 375
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 118
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPrevPlmnModeBitEnabled:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isNetworkManual:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 141
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 143
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 144
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 145
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 146
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 151
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 153
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 376
    if-nez p1, :cond_0

    .line 377
    const-string v0, "GSM"

    const-string v1, "SIMRecords, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 381
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsCdmaGsmWorldPhone:Z

    .line 382
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 384
    new-instance v0, Lcom/android/internal/telephony/SmsRecordCache;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRecordCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    .line 386
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 387
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 388
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 391
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 393
    if-nez p2, :cond_2

    .line 397
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->switchToGsm()V

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 414
    :cond_1
    :goto_1
    const-string v0, "GSM"

    const-string v1, "getting isMncLengthValidationEnabled on SIMRecords(...)!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    goto :goto_0

    .line 402
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 406
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    goto :goto_1
.end method

.method private activateMe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 308
    return-void
.end method

.method private getServicePhone()Lcom/android/internal/telephony/Phone;
    .locals 6

    .prologue
    .line 1924
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getUniqueSlotId()I

    move-result v3

    .line 1925
    .local v3, slotId:I
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->getServiceModemId(II)I

    move-result v1

    .line 1927
    .local v1, serviceModemId:I
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 1928
    .local v0, modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, servicePhone:Lcom/android/internal/telephony/Phone;
    move-object v4, v2

    .line 1930
    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v4, v4, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_0

    .line 1931
    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1934
    :cond_0
    if-nez v2, :cond_1

    .line 1935
    const-string v4, "GSM"

    const-string v5, "service phone is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_1
    return-object v2
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;I)V
    .locals 9
    .parameter "start"
    .parameter "ar"
    .parameter "what"

    .prologue
    const/16 v8, 0x32

    const/16 v7, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2609
    if-eqz p1, :cond_0

    .line 2610
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2613
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2735
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2737
    :cond_1
    :goto_0
    return-void

    .line 2615
    :pswitch_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2618
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f46

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2620
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2622
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2625
    :pswitch_1
    if-eq p3, v7, :cond_2

    .line 2626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spnState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2629
    :cond_2
    if-eqz p2, :cond_5

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 2630
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 2632
    .local v0, data:[B
    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2633
    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2635
    .local v1, tmpSpn:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2638
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2641
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "gsm.sim.operator.alpha"

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2651
    .end local v0           #data:[B
    .end local v1           #tmpSpn:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v2, v3, :cond_1

    .line 2654
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f14

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2656
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2658
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2641
    .restart local v0       #data:[B
    .restart local v1       #tmpSpn:Ljava/lang/String;
    :cond_4
    const-string v2, "gsm.sim.operator.alpha.2"

    goto :goto_1

    .line 2648
    .end local v0           #data:[B
    .end local v1           #tmpSpn:Ljava/lang/String;
    :cond_5
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto :goto_2

    .line 2662
    :pswitch_2
    if-eq p3, v8, :cond_6

    .line 2663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spnState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2666
    :cond_6
    if-eqz p2, :cond_8

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    .line 2667
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 2669
    .restart local v0       #data:[B
    array-length v2, v0

    invoke-static {v0, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2671
    .restart local v1       #tmpSpn:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2672
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 2677
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    if-ne v2, v4, :cond_7

    .line 2678
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2682
    :cond_7
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2684
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "gsm.sim.operator.alpha"

    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 2689
    .end local v0           #data:[B
    .end local v1           #tmpSpn:Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v3, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-eq v2, v3, :cond_1

    .line 2692
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f18

    const/16 v4, 0x33

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2694
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2696
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2684
    .restart local v0       #data:[B
    .restart local v1       #tmpSpn:Ljava/lang/String;
    :cond_9
    const-string v2, "gsm.sim.operator.alpha.2"

    goto :goto_3

    .line 2700
    .end local v0           #data:[B
    .end local v1           #tmpSpn:Ljava/lang/String;
    :pswitch_3
    const/16 v2, 0x33

    if-eq p3, v2, :cond_a

    .line 2701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spnState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2704
    :cond_a
    if-eqz p2, :cond_c

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    .line 2705
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 2707
    .restart local v0       #data:[B
    array-length v2, v0

    invoke-static {v0, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2709
    .restart local v1       #tmpSpn:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 2715
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    if-ne v2, v4, :cond_b

    .line 2716
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 2720
    :cond_b
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2722
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "gsm.sim.operator.alpha"

    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    .end local v0           #data:[B
    .end local v1           #tmpSpn:Ljava/lang/String;
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 2729
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2732
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2722
    .restart local v0       #data:[B
    .restart local v1       #tmpSpn:Ljava/lang/String;
    :cond_e
    const-string v2, "gsm.sim.operator.alpha.2"

    goto :goto_4

    .line 2613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    .line 2940
    array-length v4, p1

    div-int/lit8 v2, v4, 0x2

    .line 2942
    .local v2, usedCspGroups:I
    const/16 v3, -0x40

    .line 2944
    .local v3, valueAddedServicesGroup:B
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2945
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 2946
    mul-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    if-ne v4, v3, :cond_3

    .line 2947
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    .line 2953
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2977
    :cond_0
    :goto_1
    return-void

    .line 2955
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 2961
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 2962
    .local v1, servicePhone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_2

    .line 2963
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2965
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2967
    const-string v4, "GSM"

    const-string v5, "[CSP] Set Automatic Network Selection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_1

    .line 2945
    .end local v1           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2976
    :cond_4
    const-string v4, "GSM"

    const-string v5, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 6
    .parameter "efid"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1942
    sparse-switch p1, :sswitch_data_0

    .line 1995
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1996
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1999
    :goto_0
    return-void

    .line 1948
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1950
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1951
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1952
    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1953
    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1956
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1958
    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1967
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1969
    .local v1, editor1:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1970
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1971
    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1972
    iput-object v3, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1975
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1977
    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1983
    .end local v1           #editor1:Landroid/content/SharedPreferences$Editor;
    :sswitch_2
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1984
    const-string v2, "GSM"

    const-string v3, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v3, 0x6f15

    const/16 v4, 0x21

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1988
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    goto :goto_0

    .line 1942
    :sswitch_data_0
    .sparse-switch
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimRefresh([I)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2002
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 2003
    :cond_0
    const-string v3, "handleSimRefresh without input"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2057
    :goto_0
    return-void

    .line 2009
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CatService;

    .line 2010
    .local v2, stkSvr:Lcom/android/internal/telephony/cat/CatService;
    if-eqz v2, :cond_2

    .line 2011
    const/16 v3, 0x6b

    aget v4, p1, v6

    aget v5, p1, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2013
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2014
    const-string v3, "send sim refresh to stk service"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2021
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mEonsHandler:Lcom/android/internal/telephony/gsm/EonsHandler;

    if-eqz v3, :cond_3

    .line 2022
    const-string v3, "send sim refresh to eons handler"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2023
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mEonsHandler:Lcom/android/internal/telephony/gsm/EonsHandler;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/EonsHandler;->handleSimRefresh([I)V

    .line 2026
    :cond_3
    aget v3, p1, v6

    packed-switch v3, :pswitch_data_0

    .line 2054
    const-string v3, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2028
    :pswitch_0
    const-string v3, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2030
    aget v0, p1, v7

    .line 2031
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 2034
    .end local v0           #efid:I
    :pswitch_1
    const-string v3, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2036
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2037
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_0

    .line 2040
    :pswitch_2
    const-string v3, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2042
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2050
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 2026
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 7
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 2080
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 2081
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2086
    array-length v1, p1

    .line 2090
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 2091
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2092
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2094
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2096
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2100
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2102
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2103
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 2105
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 2106
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2112
    array-length v4, v0

    .line 2116
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 2117
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2118
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .line 2120
    .local v3, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2125
    aput-byte v10, v0, v9

    .line 2102
    .end local v3           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2134
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private handleSstData([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 2817
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v1, v2, :cond_2

    .line 2826
    :cond_1
    aget-byte v1, p1, v4

    and-int/lit8 v0, v1, 0x3

    .line 2827
    .local v0, pinDisable:I
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHV1 disable setting is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 2831
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_3

    .line 2832
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/IccCard;->setSSTPinDisableAllow(Z)V

    .line 2839
    .end local v0           #pinDisable:I
    :cond_2
    :goto_0
    return-void

    .line 2834
    .restart local v0       #pinDisable:I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/IccCard;->setSSTPinDisableAllow(Z)V

    goto :goto_0
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2807
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 2808
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 12
    .parameter "plmn"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2527
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 2528
    .local v3, opNumeric:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move v8, v9

    .line 2578
    :cond_1
    :goto_0
    return v8

    .line 2533
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2539
    iget-object v10, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "roaming_plmn_between_carriers_enabled"

    invoke-static {v10, v11, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    move v5, v8

    .line 2543
    .local v5, roaming_override:Z
    :goto_1
    if-eqz v5, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v10, v3, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSimAndOperatorPLMNInSameCarrier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2544
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isOnMatchingPlmn treat sim from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " as same carrier as operator "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #roaming_override:Z
    :cond_3
    move v5, v9

    .line 2539
    goto :goto_1

    .line 2554
    .restart local v5       #roaming_override:Z
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1070039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2557
    .local v4, plmnEquivalent:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v10, v4

    if-ge v0, v10, :cond_7

    .line 2558
    aget-object v10, v4, v0

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2559
    .local v2, networks:[Ljava/lang/String;
    array-length v10, v2

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    .line 2557
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2563
    :cond_6
    aget-object v10, v2, v8

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2564
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2565
    .local v6, simop:Ljava/lang/String;
    if-eqz v6, :cond_5

    aget-object v10, v2, v9

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    .line 2571
    .end local v2           #networks:[Ljava/lang/String;
    .end local v6           #simop:Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    .line 2572
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2573
    .local v7, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto/16 :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #spdiNet:Ljava/lang/String;
    :cond_9
    move v8, v9

    .line 2578
    goto/16 :goto_0
.end method

.method private notifyCallForwardingIndicator()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 849
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyMessageWaitingIndicator()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onGetCsimEuimidDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 3004
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3006
    .local v0, data:[B
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSfEuimid:Ljava/lang/String;

    .line 3007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM SF_EUIMID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSfEuimid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3008
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    .line 2746
    new-instance v6, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v7, p1

    invoke-direct {v6, p1, v10, v7}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2748
    .local v6, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v4, 0x0

    .line 2750
    .local v4, plmnEntries:[B
    const/4 v5, 0x2

    .line 2758
    .local v5, tagSpdiPlmnListOffset:B
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/gsm/SimTlv;->incrementCurOffset(B)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2759
    const-string v7, "GSM"

    const-string v8, "SPDI: invalid call to incrementCurOffset."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :cond_0
    return-void

    .line 2763
    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2764
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0x80

    if-ne v7, v8, :cond_1

    .line 2765
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v4

    .line 2770
    :cond_3
    if-eqz v4, :cond_0

    .line 2774
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v4

    div-int/lit8 v8, v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2775
    const/4 v7, 0x3

    new-array v3, v7, [B

    .line 2778
    .local v3, plmnData:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v7, v0, 0x2

    array-length v8, v4

    if-ge v7, v8, :cond_0

    .line 2781
    aget-byte v7, v4, v0

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v7, v7, 0xf0

    aget-byte v8, v4, v0

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v10

    .line 2782
    const/4 v7, 0x1

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v8, v8, 0xf0

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, v4, v9

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 2783
    const/4 v7, 0x2

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xf0

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, v4, v9

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 2784
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 2788
    .local v2, plmnCode:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 2789
    .local v1, indMnc3:I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x66

    if-ne v7, v8, :cond_4

    .line 2790
    const-string v7, "GSM"

    const-string v8, "SPDI: Strip MNC3"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2793
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPDI: plmnCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2796
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    .line 2797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EF_SPDI network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2798
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2778
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0
.end method

.method private setMatchDigitsFromConfig(Ljava/lang/String;)V
    .locals 13
    .parameter "mccMnc"

    .prologue
    .line 2198
    const/4 v3, 0x0

    .line 2199
    .local v3, matchConfigReader:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 2202
    .local v1, matchConfigFile:Ljava/io/File;
    if-nez p1, :cond_1

    .line 2203
    const-string v9, "SIM"

    const-string v10, "[SIMRecords] setMatchDigitsFromConfig: mccMnc is NULL!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2211
    .local v5, mcc:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/etc/call_matching.xml"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2212
    .end local v1           #matchConfigFile:Ljava/io/File;
    .local v2, matchConfigFile:Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 2213
    .end local v3           #matchConfigReader:Ljava/io/FileReader;
    .local v4, matchConfigReader:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 2215
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2217
    const-string v9, "callerids"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2220
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2221
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2223
    .local v7, name:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_2

    const-string v9, "callerid"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2224
    const/4 v9, 0x0

    const-string v10, "mcc"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2225
    .local v6, mccValue:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2227
    const-string v9, "gsm.sim.min.match"

    const/4 v10, 0x0

    const-string v11, "min"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const-string v9, "gsm.sim.max.match"

    const/4 v10, 0x0

    const-string v11, "max"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 2243
    .end local v6           #mccValue:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_3
    :goto_2
    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    move-object v3, v4

    .line 2247
    .end local v4           #matchConfigReader:Ljava/io/FileReader;
    .restart local v3       #matchConfigReader:Ljava/io/FileReader;
    goto :goto_0

    .line 2232
    .end local v1           #matchConfigFile:Ljava/io/File;
    .end local v3           #matchConfigReader:Ljava/io/FileReader;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    .restart local v4       #matchConfigReader:Ljava/io/FileReader;
    .restart local v6       #mccValue:Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2233
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v7

    goto :goto_1

    .line 2235
    .end local v2           #matchConfigFile:Ljava/io/File;
    .end local v4           #matchConfigReader:Ljava/io/FileReader;
    .end local v6           #mccValue:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    .restart local v3       #matchConfigReader:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 2236
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not open call matching configuration file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2243
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 2244
    :catch_1
    move-exception v0

    .line 2245
    .local v0, e:Ljava/io/IOException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in setMatchDigits parser finally "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2237
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2238
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    :try_start_7
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in setMatchDigits parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2243
    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 2244
    :catch_3
    move-exception v0

    .line 2245
    .local v0, e:Ljava/io/IOException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in setMatchDigits parser finally "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 2239
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 2240
    .restart local v0       #e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in setMatchDigits parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2243
    if-eqz v3, :cond_0

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 2244
    :catch_5
    move-exception v0

    .line 2245
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in setMatchDigits parser finally "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 2242
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 2243
    :goto_7
    if-eqz v3, :cond_5

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 2242
    :cond_5
    :goto_8
    throw v9

    .line 2244
    :catch_6
    move-exception v0

    .line 2245
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in setMatchDigits parser finally "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2244
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #matchConfigFile:Ljava/io/File;
    .end local v3           #matchConfigReader:Ljava/io/FileReader;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    .restart local v4       #matchConfigReader:Ljava/io/FileReader;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    .line 2245
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in setMatchDigits parser finally "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2242
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #matchConfigReader:Ljava/io/FileReader;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #matchConfigReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    goto :goto_7

    .end local v1           #matchConfigFile:Ljava/io/File;
    .end local v3           #matchConfigReader:Ljava/io/FileReader;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    .restart local v4       #matchConfigReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    move-object v3, v4

    .end local v4           #matchConfigReader:Ljava/io/FileReader;
    .restart local v3       #matchConfigReader:Ljava/io/FileReader;
    goto :goto_7

    .line 2239
    .end local v1           #matchConfigFile:Ljava/io/File;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    goto :goto_6

    .end local v1           #matchConfigFile:Ljava/io/File;
    .end local v3           #matchConfigReader:Ljava/io/FileReader;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    .restart local v4       #matchConfigReader:Ljava/io/FileReader;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    move-object v3, v4

    .end local v4           #matchConfigReader:Ljava/io/FileReader;
    .restart local v3       #matchConfigReader:Ljava/io/FileReader;
    goto :goto_6

    .line 2237
    .end local v1           #matchConfigFile:Ljava/io/File;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    goto/16 :goto_5

    .end local v1           #matchConfigFile:Ljava/io/File;
    .end local v3           #matchConfigReader:Ljava/io/FileReader;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    .restart local v4       #matchConfigReader:Ljava/io/FileReader;
    :catch_b
    move-exception v0

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    move-object v3, v4

    .end local v4           #matchConfigReader:Ljava/io/FileReader;
    .restart local v3       #matchConfigReader:Ljava/io/FileReader;
    goto/16 :goto_5

    .line 2235
    .end local v1           #matchConfigFile:Ljava/io/File;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    goto/16 :goto_3

    .end local v1           #matchConfigFile:Ljava/io/File;
    .end local v3           #matchConfigReader:Ljava/io/FileReader;
    .restart local v2       #matchConfigFile:Ljava/io/File;
    .restart local v4       #matchConfigReader:Ljava/io/FileReader;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2           #matchConfigFile:Ljava/io/File;
    .restart local v1       #matchConfigFile:Ljava/io/File;
    move-object v3, v4

    .end local v4           #matchConfigReader:Ljava/io/FileReader;
    .restart local v3       #matchConfigReader:Ljava/io/FileReader;
    goto/16 :goto_3
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2254
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "spn"

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 2260
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2263
    :cond_0
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 349
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 351
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->activateMe()V

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 355
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispose()V

    .line 367
    return-void
.end method

.method protected dispatchGsmMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 2065
    if-eqz p1, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2076
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 457
    return-void
.end method

.method public fetchIccMncLength(Landroid/os/Message;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    const/4 v2, 0x0

    .line 2986
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    packed-switch v0, :pswitch_data_0

    .line 2996
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2997
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3000
    :goto_0
    return-void

    .line 2988
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2991
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2993
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2986
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fetchImsi(Landroid/os/Message;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f07

    const/16 v2, 0x27

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2982
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x6f4a

    const/16 v7, 0x6f40

    const/16 v6, 0xa

    const/4 v3, 0x1

    .line 2308
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 2310
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 2312
    .local v1, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords:fetchSimRecords "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Ljava/lang/String;Landroid/os/Message;)V

    .line 2319
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2321
    const/16 v2, 0x2fe2

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2322
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2326
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;I)V

    .line 2328
    const/16 v2, 0x6fcd

    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2329
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2335
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v7, v8, v3, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    .line 2337
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2340
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_and_edit_4_msisdn_alphatags"

    invoke-static {v2, v4, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v3

    .line 2345
    .local v0, featureSettings:Z
    :cond_0
    if-eqz v0, :cond_1

    .line 2348
    const/4 v2, 0x2

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v7, v8, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    .line 2350
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2352
    const/4 v2, 0x3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v7, v8, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    .line 2354
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2356
    const/4 v2, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v7, v8, v2, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    .line 2358
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2361
    :cond_1
    const/16 v2, 0x6fc9

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2362
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2364
    const/16 v2, 0x6fad

    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2365
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2368
    const/16 v2, 0x6fca

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2369
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2376
    const/16 v2, 0x6f11

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2379
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2383
    const/16 v2, 0x6fcb

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2384
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2385
    const/16 v2, 0x6f13

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2386
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2394
    const/16 v2, 0x6f38

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2395
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2397
    const/16 v2, 0x6f16

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2398
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2401
    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2402
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2405
    const/16 v2, 0x6f42

    const/4 v3, 0x2

    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2407
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2432
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2433
    const/16 v2, 0x6f74

    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2434
    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2437
    :cond_2
    return-void

    .line 2316
    .end local v0           #featureSettings:Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 460
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method

.method public getAppOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 6
    .parameter "plmn"

    .prologue
    const/4 v5, 0x1

    .line 2454
    const/4 v1, 0x0

    .line 2457
    .local v1, rule:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2461
    :cond_1
    const/4 v1, 0x2

    .line 2501
    :cond_2
    :goto_0
    if-ne v1, v5, :cond_7

    .line 2502
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->isFilterSpn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2503
    const/4 v1, 0x2

    .line 2518
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRule rule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2519
    return v1

    .line 2462
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2468
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-ne v3, v4, :cond_5

    .line 2470
    const/4 v1, 0x1

    .line 2471
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_2

    .line 2473
    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2476
    :cond_5
    const-string v3, "getDisplayRule spn not loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2480
    :cond_6
    const/4 v1, 0x2

    .line 2483
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2486
    .local v2, spn_override:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRule spn_override="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2487
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2489
    :pswitch_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 2491
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2495
    :pswitch_1
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2505
    .end local v2           #spn_override:I
    :cond_7
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2507
    const/4 v0, 0x0

    .line 2508
    .local v0, eons_wait:Z
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_8

    .line 2509
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mEonsHandler:Lcom/android/internal/telephony/gsm/EonsHandler;

    if-eqz v3, :cond_8

    .line 2510
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mEonsHandler:Lcom/android/internal/telephony/gsm/EonsHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v0

    .line 2513
    :cond_8
    if-eqz v0, :cond_3

    .line 2514
    and-int/lit8 v1, v1, -0x3

    goto/16 :goto_1

    .line 2487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDisplayRule(Z)I
    .locals 1
    .parameter "onHomeNetwork"

    .prologue
    .line 2442
    const/4 v0, 0x0

    return v0
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSfEuimid:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1Number(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 572
    const/16 v0, 0x6f40

    const/16 v1, 0x6f4a

    const/4 v2, 0x1

    const/16 v3, 0x25

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    .line 575
    return-void
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "recordNumber"

    .prologue
    .line 2903
    packed-switch p1, :pswitch_data_0

    .line 2913
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2905
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    goto :goto_0

    .line 2907
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag2:Ljava/lang/String;

    goto :goto_0

    .line 2909
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag3:Ljava/lang/String;

    goto :goto_0

    .line 2911
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag4:Ljava/lang/String;

    goto :goto_0

    .line 2903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "recordNumber"

    .prologue
    .line 521
    packed-switch p1, :pswitch_data_0

    .line 531
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 523
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn2:Ljava/lang/String;

    goto :goto_0

    .line 527
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn3:Ljava/lang/String;

    goto :goto_0

    .line 529
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn4:Ljava/lang/String;

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 874
    const-string v1, "GSM"

    const-string v2, "getOperatorNumeric: IMSI == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_0
    return-object v0

    .line 877
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-nez v1, :cond_2

    .line 878
    :cond_1
    const-string v1, "GSM"

    const-string v2, "getSIMOperatorNumeric: bad mncLength"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReadPlmnModeFlag()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .parameter "msg"

    .prologue
    .line 900
    const/16 v27, 0x0

    .line 902
    .local v27, isRecordLoadResponse:Z
    const/16 v26, 0x0

    .line 904
    .local v26, isPreloadMsg:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1907
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    :cond_0
    :goto_0
    if-eqz v27, :cond_1

    .line 1915
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1918
    :cond_1
    return-void

    .line 906
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1909
    :catch_0
    move-exception v15

    .line 1911
    .local v15, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "GSM"

    const-string v4, "Exception parsing SIM record"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1914
    if-eqz v27, :cond_1

    goto :goto_1

    .line 910
    .end local v15           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1914
    :catchall_0
    move-exception v2

    if-eqz v27, :cond_2

    .line 1915
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1914
    :cond_2
    throw v2

    .line 917
    :sswitch_2
    const/16 v26, 0x1

    .line 919
    :sswitch_3
    if-nez v26, :cond_3

    .line 920
    const/16 v27, 0x1

    .line 924
    :cond_3
    :try_start_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 926
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 927
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 932
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 933
    .local v37, oldImsi:Ljava/lang/String;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->isValidImsi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 936
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 940
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_6
    const/16 v23, 0x0

    .line 944
    .local v23, is3digitMnc:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_8

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 947
    .local v34, mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v33, v10, v18

    .line 948
    .local v33, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 949
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 951
    const/16 v23, 0x1

    .line 959
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 960
    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    if-nez v2, :cond_9

    .line 964
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 965
    .local v35, mnc:I
    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v31

    .line 969
    .local v31, length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    .line 970
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move/from16 v0, v31

    invoke-static {v2, v0}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMncLength(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 993
    .end local v31           #length:I
    .end local v35           #mnc:I
    :cond_9
    :goto_3
    if-nez v26, :cond_0

    .line 996
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_e

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    .line 1007
    .local v39, servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_4
    check-cast v39, Lcom/android/internal/telephony/PhoneBase;

    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1014
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_f

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 947
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v30       #len$:I
    .restart local v33       #mccmnc:Ljava/lang/String;
    .restart local v34       #mccmncCode:Ljava/lang/String;
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 975
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    .restart local v31       #length:I
    .restart local v35       #mnc:I
    :cond_c
    :try_start_7
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == false!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 980
    .end local v31           #length:I
    .end local v35           #mnc:I
    :catch_1
    move-exception v13

    .line 981
    .local v13, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 982
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 986
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 987
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1005
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto :goto_4

    .line 1017
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    if-eqz v2, :cond_0

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    const-string v4, "IMSI"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1026
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v23           #is3digitMnc:Z
    .end local v37           #oldImsi:Ljava/lang/String;
    :sswitch_4
    const/16 v27, 0x1

    .line 1028
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1029
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1031
    .local v12, data:[B
    const/16 v28, 0x0

    .line 1032
    .local v28, isValidMbdn:Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 1034
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MBI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1041
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_10

    .line 1042
    const-string v2, "GSM"

    const-string v4, "Got valid mailbox number for MBDN"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/16 v28, 0x1

    .line 1048
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1050
    if-eqz v28, :cond_11

    .line 1054
    const/16 v2, 0x6fc7

    const/16 v4, 0x6fc8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1061
    :cond_11
    const/16 v2, 0x6f17

    const/16 v4, 0x6f4a

    const/4 v5, 0x1

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1074
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v28           #isValidMbdn:Z
    :sswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1075
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1076
    const/16 v27, 0x1

    .line 1078
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1080
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 1082
    const-string v4, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing EF"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_12

    const-string v2, "[MAILBOX]"

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1088
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1094
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    .line 1098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1100
    const/16 v2, 0x6f17

    const/16 v4, 0x6f4a

    const/4 v5, 0x1

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1082
    :cond_12
    const-string v2, "[MBDN]"

    goto :goto_5

    .line 1107
    :cond_13
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1109
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_14

    const-string v2, " EF[MAILBOX]"

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_15

    .line 1116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1118
    const/16 v2, 0x6f17

    const/16 v4, 0x6f4a

    const/4 v5, 0x1

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1109
    :cond_14
    const-string v2, " EF[MBDN]"

    goto :goto_6

    .line 1125
    :cond_15
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1126
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 1130
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    const/16 v27, 0x1

    .line 1132
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1134
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 1135
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1139
    :cond_16
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1141
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1165
    :goto_7
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSISDN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/16 v16, 0x0

    .line 1175
    .local v16, getCdmaMdn:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    const/16 v25, 0x1

    .line 1176
    .local v25, isInvalidMdn:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    if-eqz v2, :cond_1b

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    iget-object v2, v2, Lcom/android/internal/telephony/IccCard;->mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isDualMode()Z

    move-result v29

    .line 1178
    .local v29, isWorldPhone:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    iget-object v2, v2, Lcom/android/internal/telephony/IccCard;->mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    const/16 v24, 0x1

    .line 1180
    .local v24, isCdmaFromNV:Z
    :goto_9
    if-eqz v29, :cond_1a

    if-eqz v24, :cond_1a

    if-eqz v25, :cond_1a

    const/16 v16, 0x1

    .line 1185
    .end local v24           #isCdmaFromNV:Z
    .end local v29           #isWorldPhone:Z
    :goto_a
    if-eqz v16, :cond_0

    .line 1188
    const-string v2, "GSM"

    const-string v4, "MSISDN empty, try CDMA MDN"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x24

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1144
    .end local v16           #getCdmaMdn:Z
    .end local v25           #isInvalidMdn:Z
    :pswitch_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1145
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1146
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading EFMSISDN record 1 msisdn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1149
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn2:Ljava/lang/String;

    .line 1150
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag2:Ljava/lang/String;

    .line 1151
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading EFMSISDN record 2 msisdn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1154
    :pswitch_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn3:Ljava/lang/String;

    .line 1155
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag3:Ljava/lang/String;

    .line 1156
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading EFMSISDN record 3 msisdn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn3:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1159
    :pswitch_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn4:Ljava/lang/String;

    .line 1160
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag4:Ljava/lang/String;

    .line 1161
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading EFMSISDN record 4 msisdn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn4:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1175
    .restart local v16       #getCdmaMdn:Z
    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 1178
    .restart local v25       #isInvalidMdn:Z
    .restart local v29       #isWorldPhone:Z
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 1180
    .restart local v24       #isCdmaFromNV:Z
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 1182
    .end local v24           #isCdmaFromNV:Z
    .end local v29           #isWorldPhone:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccRecords;->mIsCdmaGsmWorldPhone:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    if-nez v2, :cond_1c

    if-eqz v25, :cond_1c

    const/16 v16, 0x1

    :goto_b
    goto/16 :goto_a

    :cond_1c
    const/16 v16, 0x0

    goto :goto_b

    .line 1199
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v16           #getCdmaMdn:Z
    .end local v25           #isInvalidMdn:Z
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1200
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1e

    .line 1201
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v11, v0

    .line 1202
    .local v11, cdmaSubscription:[Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1204
    :cond_1d
    const/4 v2, 0x0

    aget-object v2, v11, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1205
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSISDN(MDN): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const-string v2, "persist.radio.vzw.cdma.mdn"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1214
    .end local v11           #cdmaSubscription:[Ljava/lang/String;
    :cond_1e
    const-string v2, "GSM"

    const-string v4, "get cdma mdn failed in SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1221
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v27, 0x0

    .line 1222
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1224
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1225
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1227
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1235
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1236
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    .line 1237
    const-string v2, "GSM"

    const-string v4, "Invalid or missing EF[MSISDN], Query failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :goto_c
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1245
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v4, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1246
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1239
    :cond_1f
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1240
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1241
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1242
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSISDN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1252
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    const/16 v27, 0x1

    .line 1253
    const-string v2, "GSM"

    const-string v4, "[handleMessage]: EVENT_GET_EMAIL_GW_DONE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1257
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_20

    .line 1258
    const-string v2, "GSM"

    const-string v4, "[handleMessage]: Invalid or missing EF[SMSP]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1262
    :cond_20
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_22

    .line 1263
    new-instance v41, Lcom/android/internal/telephony/gsm/SmspRecord;

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, v41

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SmspRecord;-><init>([B)V

    .line 1264
    .local v41, smspRec:Lcom/android/internal/telephony/gsm/SmspRecord;
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/SmspRecord;->isEmailGwTag()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1265
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/SmspRecord;->getServiceCentreAddr()Ljava/lang/String;

    move-result-object v14

    .line 1266
    .local v14, emailGateway:Ljava/lang/String;
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handleMessage]: emailGateway:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.email.gateway"

    invoke-virtual {v2, v4, v14}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1269
    .end local v14           #emailGateway:Ljava/lang/String;
    :cond_21
    const-string v2, "GSM"

    const-string v4, "not email gateway alpha tag"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1272
    .end local v41           #smspRec:Lcom/android/internal/telephony/gsm/SmspRecord;
    :cond_22
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip emailGateway ar.result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1280
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    const/16 v27, 0x1

    .line 1282
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1283
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1285
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1289
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MWIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1295
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords.handleMessage(EVENT_GET_MWIS_DONE) - efMWIS[0]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords.handleMessage(EVENT_GET_MWIS_DONE) - efMWIS[1]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    const/16 v4, 0x20

    if-lt v2, v4, :cond_23

    .line 1307
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1312
    :cond_23
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    const/16 v43, 0x1

    .line 1313
    .local v43, voiceMailWaiting:Z
    :goto_d
    const/4 v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1315
    if-eqz v43, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v2, :cond_24

    .line 1319
    const/16 v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1324
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 1312
    .end local v43           #voiceMailWaiting:Z
    :cond_25
    const/16 v43, 0x0

    goto :goto_d

    .line 1328
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_c
    const/16 v27, 0x1

    .line 1330
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1331
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1333
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1337
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    .line 1346
    :cond_26
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v22, v2, 0xf

    .line 1349
    .local v22, indicator:I
    const/16 v2, 0xa

    move/from16 v0, v22

    if-ne v0, v2, :cond_28

    .line 1353
    const/16 v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1359
    :cond_27
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 1355
    :cond_28
    const/4 v2, 0x5

    move/from16 v0, v22

    if-ne v0, v2, :cond_27

    .line 1356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto :goto_e

    .line 1365
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v22           #indicator:I
    :sswitch_d
    const/16 v26, 0x1

    .line 1371
    :sswitch_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccRecords;->mIsCdmaGsmWorldPhone:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    iget-boolean v2, v2, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    if-eqz v2, :cond_2a

    if-nez v26, :cond_2a

    .line 1375
    :cond_29
    const/16 v27, 0x1

    .line 1379
    :cond_2a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1380
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1382
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1386
    const/4 v2, 0x0

    array-length v4, v12

    invoke-static {v12, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1388
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1394
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1396
    .restart local v9       #ar:Landroid/os/AsyncResult;
    :try_start_9
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v2, :cond_30

    const/16 v27, 0x1

    .line 1398
    :goto_f
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1400
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_31

    .line 1423
    :try_start_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2c

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 1426
    .restart local v34       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_10
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_2c

    aget-object v33, v10, v18

    .line 1427
    .restart local v33       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1428
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1438
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2e

    .line 1441
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v2, :cond_6d

    .line 1443
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1445
    .local v32, mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v31

    .line 1450
    .restart local v31       #length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6e

    .line 1451
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move/from16 v0, v31

    invoke-static {v2, v0}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMncLength(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 1473
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_2e
    :goto_11
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_2f

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_6f

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    .line 1485
    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_12
    check-cast v39, Lcom/android/internal/telephony/PhoneBase;

    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1490
    :cond_2f
    if-nez v27, :cond_0

    .line 1491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_70

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_70

    .line 1492
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1497
    :goto_13
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1396
    .end local v12           #data:[B
    :cond_30
    const/16 v27, 0x0

    goto/16 :goto_f

    .line 1404
    .restart local v12       #data:[B
    :cond_31
    :try_start_d
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_AD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    array-length v2, v12

    const/4 v4, 0x3

    if-ge v2, v4, :cond_37

    .line 1408
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1423
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_33

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 1426
    .restart local v34       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_14
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_33

    aget-object v33, v10, v18

    .line 1427
    .restart local v33       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1428
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1438
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_34

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_35

    .line 1441
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v2, :cond_72

    .line 1443
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1445
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v31

    .line 1450
    .restart local v31       #length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_73

    .line 1451
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move/from16 v0, v31

    invoke-static {v2, v0}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMncLength(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    .line 1473
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_35
    :goto_15
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_36

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_74

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    .line 1485
    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_16
    check-cast v39, Lcom/android/internal/telephony/PhoneBase;

    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1490
    :cond_36
    if-nez v27, :cond_0

    .line 1491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_75

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_75

    .line 1492
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1497
    :goto_17
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 1412
    :cond_37
    :try_start_11
    array-length v2, v12

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3d

    .line 1413
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1423
    :try_start_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_38

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_39

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_39

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 1426
    .restart local v34       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_18
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_39

    aget-object v33, v10, v18

    .line 1427
    .restart local v33       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1428
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1438
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3b

    .line 1441
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v2, :cond_77

    .line 1443
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1445
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v31

    .line 1450
    .restart local v31       #length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_78

    .line 1451
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move/from16 v0, v31

    invoke-static {v2, v0}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMncLength(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    .line 1473
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_3b
    :goto_19
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_3c

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_79

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    .line 1485
    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_1a
    check-cast v39, Lcom/android/internal/telephony/PhoneBase;

    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1490
    :cond_3c
    if-nez v27, :cond_0

    .line 1491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_7a

    .line 1492
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1497
    :goto_1b
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 1417
    :cond_3d
    const/4 v2, 0x3

    :try_start_15
    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1419
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_3e

    .line 1420
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1423
    :cond_3e
    :try_start_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_40

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_40

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 1426
    .restart local v34       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_1c
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_40

    aget-object v33, v10, v18

    .line 1427
    .restart local v33       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1428
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1438
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_40
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_41

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_42

    .line 1441
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v2, :cond_7c

    .line 1443
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1445
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v31

    .line 1450
    .restart local v31       #length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7d

    .line 1451
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move/from16 v0, v31

    invoke-static {v2, v0}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMncLength(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1473
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_42
    :goto_1d
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_43

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_7e

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    .line 1485
    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_1e
    check-cast v39, Lcom/android/internal/telephony/PhoneBase;

    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1490
    :cond_43
    if-nez v27, :cond_0

    .line 1491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_7f

    .line 1492
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1497
    :goto_1f
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1423
    .end local v12           #data:[B
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_44

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_44

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_45

    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x6

    if-lt v2, v5, :cond_45

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 1426
    .restart local v34       #mccmncCode:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_20
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_45

    aget-object v33, v10, v18

    .line 1427
    .restart local v33       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1428
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1438
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_46

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_47

    .line 1441
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v2, :cond_68

    .line 1443
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 1445
    .restart local v32       #mcc:I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v31

    .line 1450
    .restart local v31       #length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isMncLengthValidationEnabled:Z

    const/4 v5, 0x1

    if-ne v2, v5, :cond_69

    .line 1451
    const-string v2, "GSM"

    const-string v5, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move/from16 v0, v31

    invoke-static {v2, v0}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMncLength(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    .line 1473
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_47
    :goto_21
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_48

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_48

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_6a

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    .line 1485
    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_22
    check-cast v39, Lcom/android/internal/telephony/PhoneBase;

    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1490
    :cond_48
    if-nez v27, :cond_49

    .line 1491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_6b

    .line 1492
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1497
    :goto_23
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1423
    :cond_49
    throw v4

    .line 1506
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v27, 0x1

    .line 1507
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1508
    .restart local v9       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 1513
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    const/16 v27, 0x1

    .line 1515
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1516
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1518
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1522
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFF_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-nez v2, :cond_0

    .line 1527
    const/4 v2, 0x0

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_4a

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1531
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1527
    :cond_4a
    const/4 v2, 0x0

    goto :goto_24

    .line 1536
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_12
    const/16 v27, 0x1

    .line 1538
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1539
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1541
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1544
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPDI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_0

    .line 1549
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1550
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1551
    const-string v2, "GSM"

    const-string v4, "SIMRecords update failed"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1556
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const/16 v27, 0x1

    .line 1558
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1559
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1561
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1565
    new-instance v42, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v2, 0x0

    array-length v4, v12

    move-object/from16 v0, v42

    invoke-direct {v0, v12, v2, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1567
    .local v42, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_25
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1568
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_4c

    .line 1569
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 1575
    :cond_4b
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIMRecords EVENT_GET_PNN_DONE: pnnHomeName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1567
    :cond_4c
    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_25

    .line 1579
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v42           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :sswitch_15
    const/16 v27, 0x1

    .line 1581
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1582
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1585
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1589
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1594
    :sswitch_17
    const/16 v27, 0x0

    .line 1596
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1598
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 1600
    .local v21, index:[I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4d

    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4e

    .line 1601
    :cond_4d
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1604
    :cond_4e
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v21, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v21, v5

    const/16 v6, 0x16

    const/4 v7, 0x0

    aget v7, v21, v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1614
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v21           #index:[I
    :sswitch_18
    const/16 v27, 0x0

    .line 1615
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1616
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_50

    .line 1619
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 1620
    .local v19, id:I
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    if-eqz v2, :cond_4f

    .line 1624
    new-instance v40, Lcom/android/internal/telephony/SmsRawData;

    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    .line 1625
    .local v40, smsData:Lcom/android/internal/telephony/SmsRawData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    add-int/lit8 v4, v19, -0x1

    move-object/from16 v0, v40

    invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1629
    .end local v40           #smsData:Lcom/android/internal/telephony/SmsRawData;
    :cond_4f
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_0

    .line 1631
    .end local v19           #id:I
    :cond_50
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1636
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v27, 0x1

    .line 1638
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1639
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1641
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v4

    if-eq v2, v4, :cond_52

    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v2, v4, :cond_53

    .line 1650
    :cond_52
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-direct {v2, v12}, Lcom/android/internal/telephony/gsm/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USIMSST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/gsm/UsimServiceTable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1659
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1660
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSstData([B)V

    goto/16 :goto_0

    .line 1668
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_1a
    const/16 v27, 0x1

    .line 1670
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1672
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1676
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1682
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    const/16 v27, 0x0

    .line 1683
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1685
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_54

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1690
    :cond_54
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1691
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/Message;

    .line 1701
    .local v38, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_55

    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_55

    .line 1702
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1704
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1706
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1708
    const/16 v38, 0x0

    .line 1712
    :cond_55
    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v2, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1716
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v38           #onCphsCompleted:Landroid/os/Message;
    :cond_56
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1717
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1719
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1724
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v27, 0x0

    .line 1725
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1726
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_57

    .line 1727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1733
    :goto_26
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1734
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1735
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1737
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1730
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_26

    .line 1741
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1d
    const/16 v27, 0x0

    .line 1742
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1743
    .restart local v9       #ar:Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1744
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1745
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_0

    .line 1749
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1e
    const/16 v27, 0x1

    .line 1751
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1752
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1754
    .restart local v12       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 1758
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 1764
    const/4 v2, 0x1

    aget-byte v2, v12, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    :goto_27
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1767
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1764
    :cond_58
    const/4 v2, 0x0

    goto :goto_27

    .line 1773
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    :sswitch_1f
    const/16 v27, 0x1

    .line 1775
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1777
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_59

    .line 1778
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in fetching EF_CSP data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1782
    :cond_59
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v12, v0

    .line 1783
    .restart local v12       #data:[B
    array-length v2, v12

    if-gez v2, :cond_5a

    .line 1784
    const-string v2, "GSM"

    const-string v4, "Exception in fetching EF_CSP data , length < 0"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1788
    :cond_5a
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const/16 v17, 0x0

    .line 1791
    .local v17, i:I
    :goto_28
    array-length v2, v12

    move/from16 v0, v17

    if-ge v0, v2, :cond_5b

    .line 1794
    aget-byte v2, v12, v17

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_5f

    .line 1804
    :cond_5b
    array-length v2, v12

    move/from16 v0, v17

    if-ge v0, v2, :cond_61

    .line 1807
    add-int/lit8 v2, v17, 0x1

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_60

    .line 1809
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    .line 1825
    :goto_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v2, :cond_62

    .line 1826
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .line 1835
    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_2a
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isNetworkManual:Z

    .line 1836
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isNetworkManual:Z

    if-eqz v2, :cond_5e

    .line 1838
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCspChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPlmnEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isPrevPlmnEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPrevPlmnModeBitEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    if-eqz v2, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPrevPlmnModeBitEnabled:Z

    if-ne v2, v4, :cond_5d

    :cond_5c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    if-nez v2, :cond_5e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    if-nez v2, :cond_5e

    .line 1844
    :cond_5d
    const/16 v2, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1846
    .local v36, msg2:Landroid/os/Message;
    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1847
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isCspFileChanged:Z

    .line 1852
    .end local v36           #msg2:Landroid/os/Message;
    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPrevPlmnModeBitEnabled:Z

    goto/16 :goto_0

    .line 1801
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_5f
    add-int/lit8 v17, v17, 0x2

    goto/16 :goto_28

    .line 1813
    :cond_60
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->isPlmnModeBitEnabled:Z

    goto/16 :goto_29

    .line 1818
    :cond_61
    const-string v2, "GSM"

    const-string v4, "Doens\'t have VAS field in CSP"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 1828
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto/16 :goto_2a

    .line 1855
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #data:[B
    .end local v17           #i:I
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :sswitch_20
    const-string v2, "GSM"

    const-string v4, "RESET AUTOMATIC MODE DONE"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1863
    :sswitch_21
    const-string v2, "EVENT_GET_CSIM_EPRL_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1864
    const/16 v27, 0x1

    .line 1865
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1866
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_63

    .line 1867
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1870
    :cond_63
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->onGetCsimEuimidDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1874
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_22
    const-string v2, "EVENT_GET_IMSI_FROM_EF_DONE..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1875
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1876
    .restart local v9       #ar:Landroid/os/AsyncResult;
    const/16 v27, 0x0

    .line 1877
    const/16 v20, 0x0

    .line 1879
    .local v20, imsi:Ljava/lang/String;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_65

    .line 1880
    const-string v2, "GSM"

    const-string v4, "[SIMRecords] IMSI load failed!"

    iget-object v5, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1891
    :goto_2b
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/SIMRecords;->isValidImsi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 1892
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/16 v20, 0x0

    .line 1896
    :cond_64
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1897
    if-eqz v20, :cond_66

    .line 1898
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1903
    :goto_2c
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_0

    .line 1883
    :cond_65
    :try_start_1b
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->gsmBytesToImsi([B)Ljava/lang/String;

    move-result-object v20

    .line 1884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    goto :goto_2b

    .line 1885
    :catch_2
    move-exception v13

    .line 1886
    .local v13, e:Ljava/lang/Exception;
    :try_start_1c
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "corrupt IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/16 v20, 0x0

    goto :goto_2b

    .line 1900
    .end local v13           #e:Ljava/lang/Exception;
    :cond_66
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2c

    .line 1426
    .end local v20           #imsi:Ljava/lang/String;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v30       #len$:I
    .restart local v33       #mccmnc:Ljava/lang/String;
    .restart local v34       #mccmncCode:Ljava/lang/String;
    :cond_67
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_20

    .line 1468
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_68
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1470
    const-string v2, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1462
    :catch_3
    move-exception v13

    .line 1463
    .local v13, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1464
    const-string v2, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    goto/16 :goto_21

    .line 1456
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v31       #length:I
    .restart local v32       #mcc:I
    :cond_69
    :try_start_1d
    const-string v2, "GSM"

    const-string v5, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0

    goto/16 :goto_21

    .line 1483
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_6a
    :try_start_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto/16 :goto_22

    .line 1494
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_6b
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_23

    .line 1426
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #data:[B
    .restart local v18       #i$:I
    .restart local v30       #len$:I
    .restart local v33       #mccmnc:Ljava/lang/String;
    .restart local v34       #mccmncCode:Ljava/lang/String;
    :cond_6c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_10

    .line 1468
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_6d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1470
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1462
    :catch_4
    move-exception v13

    .line 1463
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1464
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_11

    .line 1456
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v31       #length:I
    .restart local v32       #mcc:I
    :cond_6e
    :try_start_1f
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_11

    .line 1483
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_6f
    :try_start_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto/16 :goto_12

    .line 1494
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_70
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_13

    .line 1426
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v30       #len$:I
    .restart local v33       #mccmnc:Ljava/lang/String;
    .restart local v34       #mccmncCode:Ljava/lang/String;
    :cond_71
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_14

    .line 1468
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1470
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1462
    :catch_5
    move-exception v13

    .line 1463
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1464
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    goto/16 :goto_15

    .line 1456
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v31       #length:I
    .restart local v32       #mcc:I
    :cond_73
    :try_start_21
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0

    goto/16 :goto_15

    .line 1483
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_74
    :try_start_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto/16 :goto_16

    .line 1494
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_75
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_17

    .line 1426
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v30       #len$:I
    .restart local v33       #mccmnc:Ljava/lang/String;
    .restart local v34       #mccmncCode:Ljava/lang/String;
    :cond_76
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_18

    .line 1468
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_77
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1470
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 1462
    :catch_6
    move-exception v13

    .line 1463
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1464
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_0

    goto/16 :goto_19

    .line 1456
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v31       #length:I
    .restart local v32       #mcc:I
    :cond_78
    :try_start_23
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_0

    goto/16 :goto_19

    .line 1483
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_79
    :try_start_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto/16 :goto_1a

    .line 1494
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_7a
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_1b

    .line 1426
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v30       #len$:I
    .restart local v33       #mccmnc:Ljava/lang/String;
    .restart local v34       #mccmncCode:Ljava/lang/String;
    :cond_7b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1c

    .line 1468
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v30           #len$:I
    .end local v33           #mccmnc:Ljava/lang/String;
    .end local v34           #mccmncCode:Ljava/lang/String;
    :cond_7c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1470
    const-string v2, "GSM"

    const-string v4, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1462
    :catch_7
    move-exception v13

    .line 1463
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1464
    const-string v2, "GSM"

    const-string v4, "SIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_0

    goto/16 :goto_1d

    .line 1456
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v31       #length:I
    .restart local v32       #mcc:I
    :cond_7d
    :try_start_25
    const-string v2, "GSM"

    const-string v4, "SIMRecords: isMncLengthValidationEnabled == true!"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_0

    goto/16 :goto_1d

    .line 1483
    .end local v31           #length:I
    .end local v32           #mcc:I
    :cond_7e
    :try_start_26
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v39

    .restart local v39       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto/16 :goto_1e

    .line 1494
    .end local v39           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_7f
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_0

    goto/16 :goto_1f

    .line 904
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_e
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_b
        0x8 -> :sswitch_c
        0x9 -> :sswitch_f
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_10
        0xd -> :sswitch_12
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x11 -> :sswitch_19
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_1b
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x18 -> :sswitch_11
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_1a
        0x1e -> :sswitch_8
        0x1f -> :sswitch_1d
        0x20 -> :sswitch_1e
        0x21 -> :sswitch_1f
        0x22 -> :sswitch_20
        0x23 -> :sswitch_a
        0x24 -> :sswitch_7
        0x25 -> :sswitch_9
        0x26 -> :sswitch_21
        0x27 -> :sswitch_22
        0x32 -> :sswitch_10
        0x33 -> :sswitch_10
        0x65 -> :sswitch_2
        0x66 -> :sswitch_d
    .end sparse-switch

    .line 1141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 2923
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2844
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2848
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2150
    const-string v2, "GSM"

    const-string v3, "SIMRecords: record load complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2156
    .local v1, operator:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isDefault()Z

    move-result v0

    .line 2159
    .local v0, isDefault:Z
    if-eqz v0, :cond_0

    const-string v2, "gsm.sim.operator.numeric"

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2164
    if-eqz v0, :cond_1

    const-string v2, "gsm.sim.operator.iso-country"

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2172
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 2173
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setMatchDigitsFromConfig(Ljava/lang/String;)V

    .line 2175
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2179
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_3

    .line 2180
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v3, "LOADED"

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    :goto_3
    return-void

    .line 2159
    :cond_0
    const-string v2, "gsm.sim.operator.numeric.2"

    goto :goto_0

    .line 2164
    :cond_1
    const-string v2, "gsm.sim.operator.iso-country.2"

    goto :goto_1

    .line 2168
    :cond_2
    const-string v2, "SIM"

    const-string v3, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2183
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    const-string v3, "LOADED"

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 464
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 465
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 466
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 467
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 468
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 469
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 471
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 474
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 475
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 478
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 479
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 480
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 481
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 501
    return-void

    .line 491
    :cond_0
    const-string v0, "gsm.sim.operator.numeric.2"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v0, "gsm.sim.operator.alpha.2"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "gsm.sim.operator.iso-country.2"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2139
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2141
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2142
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2143
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2144
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 858
    if-eqz p1, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 864
    :cond_0
    return-void
.end method

.method public onSimReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2296
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2305
    return-void

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSimReadyInCdmaMode()V
    .locals 3

    .prologue
    .line 2275
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    if-eqz v1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 2281
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :goto_0
    const-string v1, "GSM"

    const-string v2, "SIMRecords: fetch icc id in cdma"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2284
    return-void

    .line 2278
    .end local v0           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .restart local v0       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    goto :goto_0
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "recordNumber"
    .parameter "onComplete"

    .prologue
    const/16 v2, 0x6f40

    .line 2871
    packed-switch p3, :pswitch_data_0

    .line 2899
    :goto_0
    return-void

    .line 2873
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 2874
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 2892
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2893
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {v1, v2, p3, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 2897
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v3, 0x6f4a

    const/4 v5, 0x0

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2877
    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn2:Ljava/lang/String;

    .line 2878
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag2:Ljava/lang/String;

    goto :goto_1

    .line 2881
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn3:Ljava/lang/String;

    .line 2882
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag3:Ljava/lang/String;

    goto :goto_1

    .line 2885
    :pswitch_3
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn4:Ljava/lang/String;

    .line 2886
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag4:Ljava/lang/String;

    goto :goto_1

    .line 2871
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 553
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 554
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 559
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 565
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 795
    if-eq p1, v0, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 800
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->notifyCallForwardingIndicator()V

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 805
    if-eqz p2, :cond_3

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 815
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 821
    if-eqz p2, :cond_4

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 830
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v6

    .line 835
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 808
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 825
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 613
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 614
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 616
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 644
    :goto_0
    return-void

    .line 620
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 621
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 623
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 628
    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 632
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 640
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 642
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 665
    if-eq p1, v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 677
    :cond_0
    if-ltz p2, :cond_1

    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 680
    :cond_1
    const-string v2, "GSM"

    const-string v3, "SIMRecords.setVoiceMessageWaiting - Voice Mail count is < 0 & > 255"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 p2, 0xff

    .line 684
    :cond_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMRecords.setVoiceMessageWaiting - Voice Mail count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 692
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->notifyMessageWaitingIndicator()V

    .line 695
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v2, :cond_4

    .line 701
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x1e

    iget v5, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v5, :cond_3

    :goto_1
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 721
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords.setVoiceMessageWaiting - efMWIS[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords.setVoiceMessageWaiting - efMWIS[1]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_6

    .line 731
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v0, :cond_5

    const/4 v0, 0x5

    :goto_3
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 744
    :catch_0
    move-exception v6

    .line 745
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    move v0, v1

    .line 701
    goto/16 :goto_1

    .line 724
    :cond_4
    :try_start_1
    const-string v0, "GSM"

    const-string v1, "SIMRecords.setVoiceMessageWaiting - EF MWI is not supported in SIM Card."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 731
    :cond_5
    const/16 v0, 0xa

    goto :goto_3

    .line 740
    :cond_6
    const-string v0, "GSM"

    const-string v1, "SIMRecords.setVoiceMessageWaiting - EF CPHS is not supported in SIM Card."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setVoiceMessageWaiting(III)V
    .locals 0
    .parameter "line"
    .parameter "countWaiting"
    .parameter "vmPriority"

    .prologue
    .line 654
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMessageWaiting(II)V

    .line 655
    return-void
.end method

.method public switchToCdma()V
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 428
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-nez v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispose()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 439
    :cond_0
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 440
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 442
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->activateMe()V

    goto :goto_0
.end method
