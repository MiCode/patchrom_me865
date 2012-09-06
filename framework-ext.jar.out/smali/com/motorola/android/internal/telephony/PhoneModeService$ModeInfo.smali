.class Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
.super Ljava/lang/Object;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeInfo"
.end annotation


# instance fields
.field modemId:I

.field phone:Lcom/android/internal/telephony/Phone;

.field precacher:Lcom/motorola/android/internal/telephony/Precacher;

.field slotId:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;-><init>(Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    return-void
.end method
