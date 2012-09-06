.class public Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;
.super Ljava/lang/Object;
.source "CdmaOperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdmaOperatorCallForwordInfo"
.end annotation


# instance fields
.field public mBusyCallForwardToVmsDisable:Ljava/lang/String;

.field public mBusyCallForwardToVmsEnable:Ljava/lang/String;

.field public mBusyCallForwordDisable:Ljava/lang/String;

.field public mBusyCallForwordEnable:Ljava/lang/String;

.field public mCancelAllCallForwordDisable:Ljava/lang/String;

.field public mCancelAllCallForwordEnable:Ljava/lang/String;

.field public mDefaultCallForwaordDisable:Ljava/lang/String;

.field public mDefaultCallForwordEnable:Ljava/lang/String;

.field public mDoNotDisturbDisable:Ljava/lang/String;

.field public mDoNotDisturbEnable:Ljava/lang/String;

.field public mInternationalCallForwardDisable:Ljava/lang/String;

.field public mInternationalCallForwardEnable:Ljava/lang/String;

.field public mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

.field public mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

.field public mNoAnswerCallForwordDisable:Ljava/lang/String;

.field public mNoAnswerCallForwordEnable:Ljava/lang/String;

.field public mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

.field public mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

.field public mUnconditionalCallForwordDisable:Ljava/lang/String;

.field public mUnconditionalCallForwordEnable:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->this$0:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnconditionalCallForwordEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmUnconditionalCallForwordDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDefaultCallForwordEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDefaultCallForwaordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDefaultCallForwaordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwordEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwordEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCancelAllCallForwordEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmCancelAllCallForwordDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mCancelAllCallForwordDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmInternationalCallForwardEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmInternationalCallForwardDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mInternationalCallForwardDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmUnconditionalCallForwardToVmsEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmUnconditionalCallForwardToVmsDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mUnconditionalCallForwardToVmsDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwardToVmsEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBusyCallForwardToVmsDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mBusyCallForwardToVmsDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwardToVmsEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmNoAnswerCallForwardToVmsDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mNoAnswerCallForwardToVmsDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDoNotDisturbEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDoNotDisturbDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorCallForwordInfo;->mDoNotDisturbDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
