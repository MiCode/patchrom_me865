.class final enum Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
.super Ljava/lang/Enum;
.source "MotorolaCdmaDataConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OEM_RIL_CDMA_Errno"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

.field public static final enum OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

.field public static final enum OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

.field public static final enum OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

.field public static final enum OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

.field public static final enum OEM_RIL_CDMA_RADIO_NOT_AVAILABLE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

.field public static final enum OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    const-string v1, "OEM_RIL_CDMA_SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    .line 418
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    const-string v1, "OEM_RIL_CDMA_RADIO_NOT_AVAILABLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_RADIO_NOT_AVAILABLE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    .line 420
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    const-string v1, "OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE"

    invoke-direct {v0, v1, v6, v6}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    .line 422
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    const-string v1, "OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT"

    invoke-direct {v0, v1, v7, v7}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    .line 424
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    const-string v1, "OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED"

    invoke-direct {v0, v1, v8, v8}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    .line 426
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    const-string v1, "OEM_RIL_CDMA_GENERIC_FAILURE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    .line 414
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    sget-object v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_RADIO_NOT_AVAILABLE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->$VALUES:[Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 431
    iput p3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->mId:I

    .line 432
    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->toInt()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->fromInt(I)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    move-result-object v0

    return-object v0
.end method

.method private static fromInt(I)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    .locals 5
    .parameter "id"

    .prologue
    .line 439
    invoke-static {}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->values()[Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    move-result-object v0

    .local v0, arr$:[Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 440
    .local v1, en:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    iget v4, v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->mId:I

    if-ne v4, p0, :cond_0

    .line 444
    .end local v1           #en:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    :goto_1
    return-object v1

    .line 439
    .restart local v1       #en:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v1           #en:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    :cond_1
    sget-object v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    goto :goto_1
.end method

.method private toInt()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->mId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    .locals 1
    .parameter "name"

    .prologue
    .line 414
    const-class v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->$VALUES:[Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    invoke-virtual {v0}, [Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    return-object v0
.end method
