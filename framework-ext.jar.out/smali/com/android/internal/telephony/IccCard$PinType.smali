.class public final enum Lcom/android/internal/telephony/IccCard$PinType;
.super Ljava/lang/Enum;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCard$PinType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCard$PinType;

.field public static final enum PIN1:Lcom/android/internal/telephony/IccCard$PinType;

.field public static final enum PIN2:Lcom/android/internal/telephony/IccCard$PinType;

.field public static final enum PUK1:Lcom/android/internal/telephony/IccCard$PinType;

.field public static final enum PUK2:Lcom/android/internal/telephony/IccCard$PinType;

.field public static final enum UPIN:Lcom/android/internal/telephony/IccCard$PinType;

.field public static final enum UPUK:Lcom/android/internal/telephony/IccCard$PinType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/android/internal/telephony/IccCard$PinType;

    const-string v1, "PIN1"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCard$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$PinType;->PIN1:Lcom/android/internal/telephony/IccCard$PinType;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/IccCard$PinType;

    const-string v1, "PIN2"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCard$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$PinType;->PIN2:Lcom/android/internal/telephony/IccCard$PinType;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/IccCard$PinType;

    const-string v1, "UPIN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCard$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$PinType;->UPIN:Lcom/android/internal/telephony/IccCard$PinType;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/IccCard$PinType;

    const-string v1, "PUK1"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCard$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$PinType;->PUK1:Lcom/android/internal/telephony/IccCard$PinType;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/IccCard$PinType;

    const-string v1, "PUK2"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCard$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$PinType;->PUK2:Lcom/android/internal/telephony/IccCard$PinType;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/IccCard$PinType;

    const-string v1, "UPUK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$PinType;->UPUK:Lcom/android/internal/telephony/IccCard$PinType;

    .line 119
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$PinType;

    sget-object v1, Lcom/android/internal/telephony/IccCard$PinType;->PIN1:Lcom/android/internal/telephony/IccCard$PinType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$PinType;->PIN2:Lcom/android/internal/telephony/IccCard$PinType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCard$PinType;->UPIN:Lcom/android/internal/telephony/IccCard$PinType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCard$PinType;->PUK1:Lcom/android/internal/telephony/IccCard$PinType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCard$PinType;->PUK2:Lcom/android/internal/telephony/IccCard$PinType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCard$PinType;->UPUK:Lcom/android/internal/telephony/IccCard$PinType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCard$PinType;->$VALUES:[Lcom/android/internal/telephony/IccCard$PinType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$PinType;
    .locals 1
    .parameter "name"

    .prologue
    .line 119
    const-class v0, Lcom/android/internal/telephony/IccCard$PinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard$PinType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCard$PinType;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/internal/telephony/IccCard$PinType;->$VALUES:[Lcom/android/internal/telephony/IccCard$PinType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCard$PinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCard$PinType;

    return-object v0
.end method
