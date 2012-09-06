.class public Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;
.super Ljava/lang/Object;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrecacheStatus"
.end annotation


# instance fields
.field phoneType:I

.field reason:Ljava/lang/String;

.field status:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
