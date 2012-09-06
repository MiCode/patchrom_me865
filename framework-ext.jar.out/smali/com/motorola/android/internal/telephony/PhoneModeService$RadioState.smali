.class final enum Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
.super Ljava/lang/Enum;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

.field public static final enum RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

.field public static final enum RADIOSTATE_OFF:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

.field public static final enum RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    const-string v1, "RADIOSTATE_ASIS"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 117
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    const-string v1, "RADIOSTATE_ON"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 118
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    const-string v1, "RADIOSTATE_OFF"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_OFF:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    sget-object v1, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_OFF:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->$VALUES:[Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    const-class v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->$VALUES:[Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    invoke-virtual {v0}, [Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    return-object v0
.end method
