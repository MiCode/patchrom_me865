.class Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;
.super Landroid/database/ContentObserver;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

.field final synthetic val$this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;Landroid/os/Handler;Lcom/motorola/android/internal/telephony/ModemConfigManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;->this$1:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    iput-object p3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;->val$this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;->this$1:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    const-string v1, "Preferred network mode changed in DB"

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$300(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;->this$1:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo$1;->this$1:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->switchRadioTechnologyIfNeed(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$400(Lcom/motorola/android/internal/telephony/ModemConfigManager;Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;)V

    .line 195
    return-void
.end method
