.class Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;
.super Landroid/database/ContentObserver;
.source "PhoneExtBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/PhoneExtBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubsidyLockStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/PhoneExtBase;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/PhoneExtBase;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;->this$0:Lcom/motorola/android/internal/telephony/PhoneExtBase;

    .line 24
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;->this$0:Lcom/motorola/android/internal/telephony/PhoneExtBase;

    #calls: Lcom/motorola/android/internal/telephony/PhoneExtBase;->handleSubsidyLockStatusChanged()V
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneExtBase;->access$000(Lcom/motorola/android/internal/telephony/PhoneExtBase;)V

    .line 30
    return-void
.end method
