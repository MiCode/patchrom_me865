.class Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
.super Ljava/lang/Object;
.source "MotorolaCdmaDataConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OEM_RIL_CDMA_HookHeader"
.end annotation


# static fields
.field private static final OEM_RIL_CDMA_SPC_LOCK_CODE_LENGTH:I = 0x6

.field private static final SIZE:I = 0x12


# instance fields
.field private error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

.field private msgId:I

.field private msgLength:I

.field private spcLockCode:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgLength:I

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    iput p1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgLength:I

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgId:I

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    iput p1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgId:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    return-object p1
.end method
