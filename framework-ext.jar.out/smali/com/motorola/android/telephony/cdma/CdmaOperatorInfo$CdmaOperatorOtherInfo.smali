.class public Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;
.super Ljava/lang/Object;
.source "CdmaOperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdmaOperatorOtherInfo"
.end annotation


# instance fields
.field public mEmergencyCallBack:Ljava/lang/String;

.field public mIntlRoamCallBack:Ljava/lang/String;

.field public mPauseResumeFeatureCode:Ljava/lang/String;

.field public mThreeWayCallFeatureCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->this$0:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nmThreeWayCallFeatureCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mThreeWayCallFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmPauseResumeFeatureCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mPauseResumeFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmEmergencyCallBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mEmergencyCallBack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmIntlRoamCallBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mIntlRoamCallBack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
