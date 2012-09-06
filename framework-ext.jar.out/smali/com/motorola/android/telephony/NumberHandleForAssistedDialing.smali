.class public abstract Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.super Ljava/lang/Object;
.source "NumberHandleForAssistedDialing.java"


# static fields
.field protected static final DBG:Z

.field protected static mDisableVZWSpecificADRules:Z


# instance fields
.field private CUR_COUNTRY_CODE:Ljava/lang/String;

.field private CUR_COUNTRY_IDD:Ljava/lang/String;

.field private CUR_COUNTRY_MCC:Ljava/lang/String;

.field private CUR_COUNTRY_NDD:Ljava/lang/String;

.field private CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private REF_COUNTRY_AREA_CODE:Ljava/lang/String;

.field private REF_COUNTRY_CODE:Ljava/lang/String;

.field private REF_COUNTRY_IDD:Ljava/lang/String;

.field private REF_COUNTRY_MCC:Ljava/lang/String;

.field private REF_COUNTRY_NDD:Ljava/lang/String;

.field protected final USIDD_LEN:I

.field protected final US_CC:Ljava/lang/String;

.field protected final US_IDD:Ljava/lang/String;

.field protected final US_NDD:Ljava/lang/String;

.field protected cr:Landroid/content/ContentResolver;

.field protected isoCountryName:Ljava/lang/String;

.field protected mCurrentMcc:I

.field private mMccTable:Lcom/motorola/android/telephony/MCCTables;

.field protected mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    const-string v2, "ro.debuggable.v"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    .line 42
    sput-boolean v1, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    return-void

    :cond_1
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>(I)V

    .line 87
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v2, "NumberHandleForAssistedDialing"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 34
    const-string v2, "011"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->US_IDD:Ljava/lang/String;

    .line 35
    const-string v2, "1"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->US_CC:Ljava/lang/String;

    .line 36
    const-string v2, "1"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->US_NDD:Ljava/lang/String;

    .line 37
    const/4 v2, 0x3

    iput v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->USIDD_LEN:I

    .line 38
    iput v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 41
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    .line 43
    iput v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mSlotId:I

    .line 45
    const-string v2, "cur_country_mcc"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_MCC:Ljava/lang/String;

    .line 46
    const-string v2, "cur_country_idd"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_IDD:Ljava/lang/String;

    .line 47
    const-string v2, "cur_country_ndd"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_NDD:Ljava/lang/String;

    .line 48
    const-string v2, "cur_country_code"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_CODE:Ljava/lang/String;

    .line 49
    const-string v2, "ref_country_idd"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_IDD:Ljava/lang/String;

    .line 50
    const-string v2, "ref_country_ndd"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_NDD:Ljava/lang/String;

    .line 51
    const-string v2, "ref_country_code"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_CODE:Ljava/lang/String;

    .line 52
    const-string v2, "ref_country_mcc"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_MCC:Ljava/lang/String;

    .line 53
    const-string v2, "cur_country_updated_by_user"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String;

    .line 54
    const-string v2, "ref_country_area_code"

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_AREA_CODE:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/MCCTables;->getInstance(Landroid/content/Context;)Lcom/motorola/android/telephony/MCCTables;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 58
    sget-boolean v2, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NumberHandleForAssistedDialing"

    const-string v3, "NumberHandleForAssistedDialing is constructed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    sget-boolean v2, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    if-nez v2, :cond_1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "NumberHandleForAssistedDialing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VZW specific AssistedDialing is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    if-nez v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    iput p1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mSlotId:I

    .line 72
    iget v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mSlotId:I

    if-eqz v1, :cond_4

    .line 73
    const-string v1, "cur_country_mcc_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_MCC:Ljava/lang/String;

    .line 74
    const-string v1, "cur_country_idd_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_IDD:Ljava/lang/String;

    .line 75
    const-string v1, "cur_country_ndd_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_NDD:Ljava/lang/String;

    .line 76
    const-string v1, "cur_country_code_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_CODE:Ljava/lang/String;

    .line 77
    const-string v1, "ref_country_idd_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_IDD:Ljava/lang/String;

    .line 78
    const-string v1, "ref_country_ndd_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_NDD:Ljava/lang/String;

    .line 79
    const-string v1, "ref_country_code_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_CODE:Ljava/lang/String;

    .line 80
    const-string v1, "ref_country_mcc_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_MCC:Ljava/lang/String;

    .line 81
    const-string v1, "cur_country_updated_by_user_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String;

    .line 82
    const-string v1, "ref_country_area_code_2"

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_AREA_CODE:Ljava/lang/String;

    .line 84
    :cond_4
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v2, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v2, :cond_5

    .line 65
    const-string v2, "NumberHandleForAssistedDialing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_5
    sput-boolean v1, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    goto :goto_0
.end method

.method private checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"
    .parameter "otaIdd"

    .prologue
    .line 587
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 588
    :cond_0
    const/4 v5, 0x0

    .line 606
    :goto_0
    return-object v5

    .line 590
    :cond_1
    sget-boolean v5, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "NumberHandleForAssistedDialing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin checkAndProcessPlusCode. phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 592
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 593
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 595
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 596
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 597
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    if-nez v1, :cond_4

    .line 598
    :cond_3
    const/4 v1, 0x1

    .line 599
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 602
    :cond_4
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 605
    .end local v0           #c:C
    :cond_5
    sget-boolean v5, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "NumberHandleForAssistedDialing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End checkAndProcessPlusCode. phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "ndd"
    .parameter "sourceNumber"
    .parameter "mcc"

    .prologue
    .line 762
    packed-switch p3, :pswitch_data_0

    .line 784
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, retString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 765
    .end local v0           #retString:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    move-object v0, p2

    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    .line 770
    .end local v0           #retString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const-string v1, "10"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    .line 774
    .end local v0           #retString:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    move-object v0, p2

    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    .line 780
    .end local v0           #retString:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    .restart local v0       #retString:Ljava/lang/String;
    goto :goto_0

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method private getAreaCode(I)Ljava/lang/String;
    .locals 7
    .parameter "refMcc"

    .prologue
    .line 793
    const-string v4, ""

    .line 794
    .local v4, retString:Ljava/lang/String;
    const/4 v0, -0x1

    .line 796
    .local v0, areaCodeLength:I
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 797
    const/4 v0, 0x3

    .line 806
    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 807
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 809
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v2

    .line 810
    .local v2, mService:Lcom/motorola/android/internal/telephony/PhoneModeService;
    iget v5, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mSlotId:I

    invoke-virtual {v2, v5}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getPhoneBySlot(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 811
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    .line 812
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 821
    .end local v2           #mService:Lcom/motorola/android/internal/telephony/PhoneModeService;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 822
    const-string v4, ""

    .line 824
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v0, :cond_4

    .line 825
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 828
    :goto_2
    return-object v5

    .line 801
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, ""

    .line 816
    const-string v5, "NumberHandleForAssistedDialing"

    const-string v6, "Get line1 number exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 819
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 828
    goto :goto_2
.end method

.method private getPostDialFirstIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "phoneNumber"

    .prologue
    const/4 v2, -0x1

    .line 654
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 663
    :cond_1
    :goto_0
    return v0

    .line 657
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 658
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 659
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 663
    goto :goto_0
.end method

.method private hasPlusCode(Ljava/lang/String;)Z
    .locals 7
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 614
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_2

    :cond_0
    move v2, v3

    .line 625
    :cond_1
    :goto_0
    return v2

    .line 617
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 618
    .local v1, len:I
    sget-boolean v4, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "NumberHandleForAssistedDialing"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Begin hasPlusCode. phoneNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 625
    goto :goto_0
.end method

.method private hasSpecialChar(Ljava/lang/String;)Z
    .locals 8
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 633
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_2

    :cond_0
    move v3, v4

    .line 647
    :cond_1
    :goto_0
    return v3

    .line 636
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 638
    .local v2, len:I
    sget-boolean v5, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "NumberHandleForAssistedDialing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin hasSpecialChar. phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 641
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 642
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_4

    const/16 v5, 0x39

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_5

    .line 643
    sget-boolean v4, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NumberHandleForAssistedDialing"

    const-string v5, "hasSpecialChar returns true."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_6
    move v3, v4

    .line 647
    goto :goto_0
.end method

.method private isNANPMCC(I)Z
    .locals 1
    .parameter "refMcc"

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, ret:Z
    sparse-switch p1, :sswitch_data_0

    .line 704
    const/4 v0, 0x0

    .line 707
    :goto_0
    return v0

    .line 701
    :sswitch_0
    const/4 v0, 0x1

    .line 702
    goto :goto_0

    .line 669
    :sswitch_data_0
    .sparse-switch
        0x12e -> :sswitch_0
        0x136 -> :sswitch_0
        0x137 -> :sswitch_0
        0x138 -> :sswitch_0
        0x139 -> :sswitch_0
        0x13a -> :sswitch_0
        0x13b -> :sswitch_0
        0x13c -> :sswitch_0
        0x14a -> :sswitch_0
        0x14c -> :sswitch_0
        0x152 -> :sswitch_0
        0x156 -> :sswitch_0
        0x158 -> :sswitch_0
        0x15a -> :sswitch_0
        0x15c -> :sswitch_0
        0x15e -> :sswitch_0
        0x160 -> :sswitch_0
        0x162 -> :sswitch_0
        0x164 -> :sswitch_0
        0x166 -> :sswitch_0
        0x168 -> :sswitch_0
        0x16c -> :sswitch_0
        0x16d -> :sswitch_0
        0x16e -> :sswitch_0
        0x172 -> :sswitch_0
        0x176 -> :sswitch_0
        0x178 -> :sswitch_0
        0x216 -> :sswitch_0
        0x217 -> :sswitch_0
        0x220 -> :sswitch_0
    .end sparse-switch
.end method

.method private isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryCode"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidIDD(Ljava/lang/String;)Z
    .locals 1
    .parameter "idd"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidIDD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidLocalNumber(IILjava/lang/String;)Z
    .locals 3
    .parameter "refMcc"
    .parameter "numberLength"
    .parameter "sourceNumber"

    .prologue
    const/4 v2, 0x7

    .line 711
    const/4 v0, 0x0

    .line 713
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    if-ne p2, v2, :cond_0

    .line 715
    const/4 v0, 0x1

    .line 729
    :cond_0
    :goto_0
    return v0

    .line 718
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 725
    const/4 v0, 0x0

    goto :goto_0

    .line 720
    :pswitch_0
    if-eq p2, v2, :cond_2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 721
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method private isValidLongNumber(IILjava/lang/String;)Z
    .locals 4
    .parameter "refMcc"
    .parameter "numberLength"
    .parameter "sourceNumber"

    .prologue
    const/16 v3, 0xb

    const/16 v2, 0xa

    .line 733
    const/4 v0, 0x0

    .line 735
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNANPMCC(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    if-ne p2, v2, :cond_1

    .line 737
    const/4 v0, 0x1

    .line 757
    :cond_0
    :goto_0
    return v0

    .line 738
    :cond_1
    if-ne p2, v3, :cond_0

    const-string v1, "1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    const/4 v0, 0x1

    goto :goto_0

    .line 742
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 744
    :pswitch_0
    if-lt p2, v2, :cond_0

    const/16 v1, 0xc

    if-gt p2, v1, :cond_0

    .line 746
    if-ne p2, v3, :cond_3

    const-string v1, "1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 747
    const/4 v0, 0x1

    goto :goto_0

    .line 750
    :cond_3
    const-string v1, "0"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    const/4 v0, 0x1

    goto :goto_0

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x1cc
        :pswitch_0
    .end packed-switch
.end method

.method private isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "areaCode"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidNANPAreaCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract getLastNBPCDStatus()Z
.end method

.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 96
    const-string v7, "0"

    const-string v8, "persist.cdma.nbpcd.call"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v2, v6

    .line 153
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isNBPCDAllowed()Z

    move-result v0

    .line 101
    .local v0, isNBPCDAllowed:Z
    invoke-virtual {p0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getLastNBPCDStatus()Z

    move-result v1

    .line 102
    .local v1, lastNBPCDStatus:Z
    sget-boolean v7, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "NumberHandleForAssistedDialing"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNBPCDAllowed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lastNBPCDStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getPostDialFirstIndex(Ljava/lang/String;)I

    move-result v4

    .line 111
    .local v4, postDialFirstIndex:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_6

    .line 112
    move-object v3, p1

    .line 113
    .local v3, manipulatingNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 119
    .local v5, postDialNumber:Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v7

    .line 120
    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_MCC:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 121
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sget-boolean v7, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "NumberHandleForAssistedDialing"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCurrentMcc is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_3
    iget v7, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 125
    sget-boolean v7, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "NumberHandleForAssistedDialing"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isoCountryName is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_7

    .line 132
    :cond_5
    const/4 v2, 0x0

    .line 147
    .local v2, manipulatedNumber:Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_c

    move-object v2, v6

    .line 148
    goto/16 :goto_0

    .line 115
    .end local v2           #manipulatedNumber:Ljava/lang/String;
    .end local v3           #manipulatingNumber:Ljava/lang/String;
    .end local v5           #postDialNumber:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 116
    .restart local v3       #manipulatingNumber:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #postDialNumber:Ljava/lang/String;
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 133
    :cond_7
    sget-boolean v7, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v8, "us"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v8, "pr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v8, "vi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v8, "gu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 137
    :cond_8
    sget-boolean v7, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v7, :cond_9

    const-string v7, "NumberHandleForAssistedDialing"

    const-string v8, "Manipulate number with VZW network rules."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_9
    invoke-virtual {p0, v3, p2, v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #manipulatedNumber:Ljava/lang/String;
    goto :goto_2

    .line 141
    .end local v2           #manipulatedNumber:Ljava/lang/String;
    :cond_a
    sget-boolean v7, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v7, :cond_b

    const-string v7, "NumberHandleForAssistedDialing"

    const-string v8, "Manipulate number with international network rules."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_b
    invoke-virtual {p0, v3, p2, v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #manipulatedNumber:Ljava/lang/String;
    goto :goto_2

    .line 150
    :cond_c
    if-eqz v5, :cond_0

    .line 153
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected abstract isNBPCDAllowed()Z
.end method

.method protected manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 165
    sget-boolean v2, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NumberHandleForAssistedDialing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sourceNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    move-object v0, p1

    .line 167
    .local v0, manipulatedNumber:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 168
    .local v1, numLength:I
    if-eqz v1, :cond_6

    .line 171
    if-nez p3, :cond_3

    .line 172
    const-string v2, "011"

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1

    .line 174
    const/4 v2, 0x0

    .line 326
    :goto_0
    return-object v2

    .line 176
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 177
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const-string v2, "011"

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 180
    goto :goto_0

    .line 183
    :cond_3
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    const/4 v2, 0x0

    goto :goto_0

    .line 189
    :cond_4
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    const/4 v2, 0x0

    goto :goto_0

    .line 193
    :cond_5
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 194
    if-nez p3, :cond_6

    .line 196
    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v2, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 199
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 323
    const/4 v0, 0x0

    .line 325
    :cond_7
    sget-boolean v2, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "NumberHandleForAssistedDialing"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "manipulatedNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v2, v0

    .line 326
    goto :goto_0

    .line 203
    :cond_9
    const/16 v2, 0xc

    if-lt v1, v2, :cond_6

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    :cond_a
    const-string v2, "011"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_b
    const/16 v2, 0xb

    if-ne v1, v2, :cond_c

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 217
    :cond_c
    const/16 v2, 0xb

    if-lt v1, v2, :cond_6

    .line 221
    const-string v2, "BY_DIALER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 222
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 223
    if-eqz p4, :cond_d

    .line 224
    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 226
    :cond_d
    const-string v2, "011"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 231
    :cond_e
    const-string v2, "BY_CONTACT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 234
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 237
    const/16 v2, 0xb

    if-ne v1, v2, :cond_10

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 239
    if-eqz p4, :cond_f

    .line 240
    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 242
    :cond_f
    const-string v2, "011"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 246
    :cond_10
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 250
    :cond_12
    if-eqz p4, :cond_13

    .line 251
    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 253
    :cond_13
    const-string v2, "011"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 257
    :cond_14
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 262
    :cond_15
    if-eqz p4, :cond_16

    .line 263
    const-string v2, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 265
    :cond_16
    const-string v2, "011"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 269
    :cond_17
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x5

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 274
    :cond_18
    if-eqz p4, :cond_19

    .line 275
    const-string v2, "+"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 277
    :cond_19
    const-string v2, "011"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 281
    :cond_1a
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x6

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x5

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 286
    :cond_1b
    if-eqz p4, :cond_1c

    .line 287
    const-string v2, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 289
    :cond_1c
    const-string v2, "011"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 293
    :cond_1d
    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x7

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x6

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x5

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 298
    :cond_1e
    if-eqz p4, :cond_1f

    .line 299
    const-string v2, "+"

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 301
    :cond_1f
    const-string v2, "011"

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 305
    :cond_20
    const/4 v2, 0x5

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 310
    :cond_21
    if-eqz p4, :cond_22

    .line 311
    const-string v2, "+"

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 313
    :cond_22
    const-string v2, "011"

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 26
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    .line 335
    sget-boolean v22, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v22, :cond_0

    const-string v22, "NumberHandleForAssistedDialing"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sourceNumber = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    move-object/from16 v5, p1

    .line 337
    .local v5, manipulatedNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 349
    .local v6, numLength:I
    const-string v3, ""

    .line 352
    .local v3, areaCode:Ljava/lang/String;
    sget-object v23, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v23

    .line 353
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_IDD:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, otaIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_NDD:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 355
    .local v12, otaNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_CODE:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, otaCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_MCC:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 358
    .local v11, otaMcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_IDD:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, refIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_NDD:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 360
    .local v19, refNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_CODE:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 361
    .local v14, refCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_MCC:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 362
    .local v18, refMcc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->CUR_COUNTRY_UPDATED_BY_USER:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 366
    .local v4, areaCodeUpdated:I
    if-eqz v4, :cond_2

    .line 367
    sget-boolean v22, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v22, :cond_1

    const-string v22, "NumberHandleForAssistedDialing"

    const-string v24, "get areaCode from Settings."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->REF_COUNTRY_AREA_CODE:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    :cond_2
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    if-nez v4, :cond_4

    .line 372
    sget-boolean v22, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v22, :cond_3

    const-string v22, "NumberHandleForAssistedDialing"

    const-string v23, "get areaCode from MDN."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getAreaCode(I)Ljava/lang/String;

    move-result-object v3

    .line 376
    :cond_4
    sget-boolean v22, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v22, :cond_5

    .line 377
    const-string v22, "NumberHandleForAssistedDialing"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "otaIdd is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", otaNdd is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", otaCC is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", refIdd is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", refNdd is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", refCC is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", refMcc is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_5
    sget-boolean v22, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v22, :cond_6

    const-string v22, "NumberHandleForAssistedDialing"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "reference country areaCode is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_6
    const/4 v10, 0x0

    .line 388
    .local v10, otaIddLength:I
    if-eqz v9, :cond_8

    .line 389
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 393
    :goto_0
    const/4 v13, 0x0

    .line 394
    .local v13, otaNddLength:I
    if-eqz v12, :cond_9

    .line 395
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 399
    :goto_1
    const/4 v8, 0x0

    .line 400
    .local v8, otaCCLength:I
    if-eqz v7, :cond_a

    .line 401
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 405
    :goto_2
    const/16 v17, 0x0

    .line 406
    .local v17, refIddLength:I
    if-eqz v16, :cond_b

    .line 407
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 411
    :goto_3
    const/16 v20, 0x0

    .line 412
    .local v20, refNddLength:I
    if-eqz v19, :cond_c

    .line 413
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    .line 417
    :goto_4
    const/4 v15, 0x0

    .line 418
    .local v15, refCCLength:I
    if-eqz v14, :cond_d

    .line 419
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 423
    :goto_5
    if-nez v3, :cond_7

    .line 424
    const-string v3, ""

    .line 427
    :cond_7
    if-eqz v6, :cond_13

    .line 429
    if-nez p3, :cond_10

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    if-nez v5, :cond_e

    .line 432
    const/16 v22, 0x0

    .line 563
    :goto_6
    return-object v22

    .line 370
    .end local v4           #areaCodeUpdated:I
    .end local v7           #otaCC:Ljava/lang/String;
    .end local v8           #otaCCLength:I
    .end local v9           #otaIdd:Ljava/lang/String;
    .end local v10           #otaIddLength:I
    .end local v11           #otaMcc:I
    .end local v12           #otaNdd:Ljava/lang/String;
    .end local v13           #otaNddLength:I
    .end local v14           #refCC:Ljava/lang/String;
    .end local v15           #refCCLength:I
    .end local v16           #refIdd:Ljava/lang/String;
    .end local v17           #refIddLength:I
    .end local v18           #refMcc:I
    .end local v19           #refNdd:Ljava/lang/String;
    .end local v20           #refNddLength:I
    :catchall_0
    move-exception v22

    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 391
    .restart local v4       #areaCodeUpdated:I
    .restart local v7       #otaCC:Ljava/lang/String;
    .restart local v9       #otaIdd:Ljava/lang/String;
    .restart local v10       #otaIddLength:I
    .restart local v11       #otaMcc:I
    .restart local v12       #otaNdd:Ljava/lang/String;
    .restart local v14       #refCC:Ljava/lang/String;
    .restart local v16       #refIdd:Ljava/lang/String;
    .restart local v18       #refMcc:I
    .restart local v19       #refNdd:Ljava/lang/String;
    :cond_8
    const-string v9, ""

    goto :goto_0

    .line 397
    .restart local v13       #otaNddLength:I
    :cond_9
    const-string v12, ""

    goto :goto_1

    .line 403
    .restart local v8       #otaCCLength:I
    :cond_a
    const-string v7, ""

    goto :goto_2

    .line 409
    .restart local v17       #refIddLength:I
    :cond_b
    const-string v16, ""

    goto :goto_3

    .line 415
    .restart local v20       #refNddLength:I
    :cond_c
    const-string v19, ""

    goto :goto_4

    .line 421
    .restart local v15       #refCCLength:I
    :cond_d
    const-string v14, ""

    goto :goto_5

    .line 434
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 435
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const-string v23, "+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 436
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_f
    move-object/from16 v22, v5

    .line 438
    goto :goto_6

    .line 441
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 442
    const/16 v22, 0x0

    goto :goto_6

    .line 447
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 448
    const/16 v22, 0x0

    goto :goto_6

    .line 451
    :cond_12
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const-string v23, "+"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 452
    if-nez p3, :cond_13

    .line 457
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    if-lt v6, v0, :cond_16

    const/16 v22, 0x1

    add-int/lit8 v23, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 459
    add-int/lit8 v22, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1, v11}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 559
    :cond_13
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 560
    const/4 v5, 0x0

    .line 562
    :cond_14
    sget-boolean v22, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->DBG:Z

    if-eqz v22, :cond_15

    const-string v22, "NumberHandleForAssistedDialing"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "manipulatedNumber = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v22, v5

    .line 563
    goto/16 :goto_6

    .line 464
    :cond_16
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v6, v0, :cond_17

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_19

    :cond_17
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v6, v0, :cond_18

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_19

    const/16 v22, 0x1

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_19

    :cond_18
    const/16 v22, 0x3

    move/from16 v0, v22

    if-le v6, v0, :cond_13

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_19

    const/16 v22, 0x1

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_19

    const/16 v22, 0x1

    const/16 v23, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 472
    :cond_19
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 481
    :cond_1a
    const-string v22, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLongNumber(IILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    .line 485
    move-object/from16 v21, p1

    .line 486
    .local v21, tempNumber:Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 487
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 490
    :cond_1b
    if-eqz p4, :cond_1c

    .line 491
    const-string v22, "+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 493
    :cond_1c
    invoke-virtual {v9, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 499
    .end local v21           #tempNumber:Ljava/lang/String;
    :cond_1d
    const-string v22, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLocalNumber(IILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_21

    .line 503
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-le v0, v1, :cond_1f

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 505
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    :cond_1f
    if-eqz p4, :cond_20

    .line 508
    const-string v22, "+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 511
    :cond_20
    invoke-virtual {v9, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 524
    :cond_21
    add-int v22, v10, v8

    move/from16 v0, v22

    if-lt v6, v0, :cond_23

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 526
    if-eqz p4, :cond_22

    const-string v22, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 527
    const-string v22, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 528
    :cond_22
    add-int v22, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 530
    add-int v22, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1, v11}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 536
    :cond_23
    move/from16 v0, v17

    if-lt v6, v0, :cond_13

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 540
    if-eqz p4, :cond_24

    .line 541
    const-string v22, "+"

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 544
    :cond_24
    add-int v22, v17, v8

    move/from16 v0, v22

    if-lt v6, v0, :cond_25

    add-int v22, v17, v8

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 547
    add-int v22, v17, v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v1, v11}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->concatNddByMcc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 552
    :cond_25
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7
.end method
