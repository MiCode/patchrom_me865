.class final Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;
.super Ljava/lang/Object;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "argument"

    .prologue
    .line 1069
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 1071
    return-void
.end method
