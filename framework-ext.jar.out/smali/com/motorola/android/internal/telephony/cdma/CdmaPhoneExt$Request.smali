.class Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;
.super Ljava/lang/Object;
.source "CdmaPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Request"
.end annotation


# instance fields
.field finished:Z

.field result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;->this$0:Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;-><init>(Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;)V

    return-void
.end method
