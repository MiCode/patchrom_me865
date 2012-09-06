.class public Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;
.super Ljava/lang/Object;
.source "PreferredNetworkInfo.java"


# instance fields
.field private gsmActEnable:Z

.field private gsmCompactActEnable:Z

.field private operatorAlphaLong:Ljava/lang/String;

.field private operatorIndex:I

.field private operatorNumeric:Ljava/lang/String;

.field private utranActEnable:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter "operatorIndex"
    .parameter "operatorAlphaLong"
    .parameter "operatorNumeric"
    .parameter "gsmActEnable"
    .parameter "gsmCompactActEnable"
    .parameter "utranActEnable"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorIndex:I

    .line 64
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorNumeric:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->gsmActEnable:Z

    .line 67
    iput-boolean p5, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->gsmCompactActEnable:Z

    .line 68
    iput-boolean p6, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->utranActEnable:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getGsmActEnable()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->gsmActEnable:Z

    return v0
.end method

.method public getGsmCompactActEnable()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->gsmCompactActEnable:Z

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorIndex()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorIndex:I

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getUtranActEnable()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->utranActEnable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->gsmActEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->gsmCompactActEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->utranActEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
