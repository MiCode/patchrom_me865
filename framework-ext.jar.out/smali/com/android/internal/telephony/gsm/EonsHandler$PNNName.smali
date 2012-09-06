.class Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
.super Ljava/lang/Object;
.source "EonsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/EonsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PNNName"
.end annotation


# instance fields
.field longName:Ljava/lang/String;

.field shortName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/EonsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->this$0:Lcom/android/internal/telephony/gsm/EonsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOuterType()Lcom/android/internal/telephony/gsm/EonsHandler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->this$0:Lcom/android/internal/telephony/gsm/EonsHandler;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 71
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 74
    .local v0, other:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->getOuterType()Lcom/android/internal/telephony/gsm/EonsHandler;

    move-result-object v3

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->getOuterType()Lcom/android/internal/telephony/gsm/EonsHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 78
    iget-object v3, v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 85
    iget-object v3, v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 89
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PNNName [longName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
