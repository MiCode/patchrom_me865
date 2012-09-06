.class public Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;
.super Ljava/lang/Object;
.source "CdmaOperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CdmaOperatorVmsInfo"
.end annotation


# instance fields
.field public mVoiceMailNotificationDisable:Ljava/lang/String;

.field public mVoiceMailNotificationEnable:Ljava/lang/String;

.field public mVoiceMailNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;->this$0:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nmVoiceMailNotificationEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVoiceMailNotificationDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNotificationDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmVoiceMailNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorVmsInfo;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
