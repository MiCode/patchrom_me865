.class public Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;
.super Ljava/lang/Object;
.source "CdmaOperatorHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final TMZ:Ljava/lang/String; = "TIMEZONE"

.field private static isUpdateByMcc:Z

.field private static sLocaleMcc:Ljava/util/Locale;

.field private static sLocaleSid:Ljava/util/Locale;

.field private static sMccMnc:I

.field private static sNid:I

.field private static sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

.field private static sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

.field private static sSid:I

.field private static sTimeZone:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 24
    const-string v2, "CdmaOperatorHelper"

    sput-object v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    .line 42
    sput-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->isUpdateByMcc:Z

    .line 44
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillOperatorInfo(Landroid/database/Cursor;Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)Z
    .locals 6
    .parameter "cur"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mId:Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 51
    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    .line 52
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    .line 53
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    .line 54
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    .line 55
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    .line 56
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    .line 57
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    .line 58
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    .line 59
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    .line 60
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    .line 61
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    .line 62
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardEnable:Ljava/lang/String;

    .line 63
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardDisable:Ljava/lang/String;

    .line 64
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

    .line 65
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

    .line 66
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsEnable:Ljava/lang/String;

    .line 67
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsDisable:Ljava/lang/String;

    .line 68
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

    .line 69
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

    .line 70
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbEnable:Ljava/lang/String;

    .line 71
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mCallForwordInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbDisable:Ljava/lang/String;

    .line 72
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mVmsInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationEnable:Ljava/lang/String;

    .line 73
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mVmsInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationDisable:Ljava/lang/String;

    .line 74
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mVmsInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 75
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingEnable:Ljava/lang/String;

    .line 76
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mWaitingInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorWaitingInfo;->mCallWaitingDisable:Ljava/lang/String;

    .line 77
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x1c

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    .line 78
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    .line 79
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x1e

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mEmergencyCallBack:Ljava/lang/String;

    .line 80
    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    sget-object v3, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v4, 0x21

    aget-object v3, v3, v4

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mIntlRoamCallBack:Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mPref:Ljava/lang/String;

    .line 82
    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    .line 83
    sget-boolean v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillOperatorInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    const-string v2, "0"

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mPref:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iput-object v5, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 88
    iput-object v5, p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    .line 91
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getCurrentOperatorInfo()Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 1

    .prologue
    .line 291
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->isUpdateByMcc:Z

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 294
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 4
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 242
    const/4 v1, 0x1

    sput-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->isUpdateByMcc:Z

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 244
    .local v0, locale:Ljava/util/Locale;
    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sMccMnc:I

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use buffered sOperatorInfoMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 256
    :goto_0
    return-object v1

    .line 250
    :cond_1
    sput p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sMccMnc:I

    .line 251
    sput-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    .line 252
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_2

    .line 253
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use new sOperatorInfoMcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    invoke-static {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfoFromDB(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 256
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoMcc:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;III)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 4
    .parameter "context"
    .parameter "sid"
    .parameter "nid"
    .parameter "timezone"

    .prologue
    .line 215
    const/4 v1, 0x0

    sput-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->isUpdateByMcc:Z

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 217
    .local v0, locale:Ljava/util/Locale;
    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sSid:I

    if-ne p1, v1, :cond_1

    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sNid:I

    if-ne p2, v1, :cond_1

    sget v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sTimeZone:I

    if-ne p3, v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleSid:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use buffered sOperatorInfoSid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 232
    :goto_0
    return-object v1

    .line 224
    :cond_1
    sput p1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sSid:I

    .line 225
    sput p2, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sNid:I

    .line 226
    sput p3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sTimeZone:I

    .line 227
    sput-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sLocaleSid:Ljava/util/Locale;

    .line 228
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v1, :cond_2

    .line 229
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo use new sOperatorInfoSid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfoFromDB(Landroid/content/Context;III)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    .line 232
    sget-object v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->sOperatorInfoSid:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    goto :goto_0
.end method

.method public static getOperatorInfo(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 7
    .parameter "context"
    .parameter "mccmnc"
    .parameter "sid"
    .parameter "nid"
    .parameter "timeZone"

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 265
    .local v1, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, mccmncNum:I
    invoke-static {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfo(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 273
    .end local v2           #mccmncNum:I
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mId:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 274
    :cond_1
    const v3, 0x7fffffff

    .line 275
    .local v3, timeZoneOffset:I
    if-eqz p4, :cond_2

    .line 276
    invoke-static {p4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 277
    .local v4, tz:Ljava/util/TimeZone;
    if-eqz v4, :cond_2

    .line 278
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    const v6, 0xdbba0

    div-int v3, v5, v6

    .line 281
    .end local v4           #tz:Ljava/util/TimeZone;
    :cond_2
    invoke-static {p0, p2, p3, v3}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfo(Landroid/content/Context;III)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v1

    .line 283
    .end local v3           #timeZoneOffset:I
    :cond_3
    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getOperatorInfoFromDB(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 9
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    const/4 v4, 0x0

    .line 185
    new-instance v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-direct {v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;-><init>()V

    .line 186
    .local v8, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCC_MNC_NO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, sWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 188
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator$MccMnc;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    if-eqz v6, :cond_1

    .line 191
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {v6, v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->fillOperatorInfo(Landroid/database/Cursor;Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_1
    return-object v8

    .line 194
    :catch_0
    move-exception v7

    .line 195
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getOperatorInfoFromDB(Landroid/content/Context;III)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .locals 11
    .parameter "context"
    .parameter "sid"
    .parameter "nid"
    .parameter "timezone"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 106
    new-instance v8, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-direct {v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;-><init>()V

    .line 108
    .local v8, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, sWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 110
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator$UnresolvableConflict;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    if-eqz v6, :cond_3

    .line 114
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {v6, v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->fillOperatorInfo(Landroid/database/Cursor;Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)Z

    .line 116
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnresolvableConflict:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_1
    :goto_0
    return-object v8

    .line 121
    :catch_0
    move-exception v7

    .line 122
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND SIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND  NIDMIN <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND NIDMAX >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 132
    .local v2, columns:[Ljava/lang/String;
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v10, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    array-length v0, v0

    const-string v1, "TIMEZONE"

    aput-object v1, v2, v0

    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator$SidNid;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    .line 143
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v0, :cond_4

    .line 144
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "muti records"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, tz:Ljava/lang/String;
    :cond_5
    const-string v0, "TIMEZONE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    invoke-static {v6, v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->fillOperatorInfo(Landroid/database/Cursor;Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .end local v9           #tz:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 124
    .end local v2           #columns:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 154
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #tz:Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 156
    .end local v9           #tz:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 157
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_4
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 159
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 162
    :cond_8
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->DBG:Z

    if-eqz v0, :cond_9

    .line 163
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "one record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_9
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-static {v6, v8}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->fillOperatorInfo(Landroid/database/Cursor;Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    :cond_a
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 169
    :catch_2
    move-exception v7

    .line 170
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_6
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 172
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
