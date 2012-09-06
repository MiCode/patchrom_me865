.class Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;
.super Ljava/lang/Object;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccAppMask"
.end annotation


# instance fields
.field blackList:[I

.field imsiPattern:Ljava/lang/String;

.field negation:Z

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;

.field whiteList:[I


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;Lcom/motorola/android/internal/telephony/Precacher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 916
    .local v0, b:Ljava/lang/StringBuffer;
    const-string v2, "white["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 918
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 919
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    :cond_1
    const-string v2, "], black["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 922
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 923
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 924
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 922
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 926
    :cond_3
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", negation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->negation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pattern="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->imsiPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", pattern="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->imsiPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
