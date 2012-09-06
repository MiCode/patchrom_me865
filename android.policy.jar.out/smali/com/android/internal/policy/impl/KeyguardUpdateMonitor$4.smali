.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 401
    .local v1, networkType:I
    const/4 v0, 0x0

    .line 402
    .local v0, isCmcc3G:Z
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 404
    :cond_0
    const/4 v0, 0x1

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isCmcc3GCamped:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isCmcc3GCamped:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    .line 409
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkType changed to updateNetworkName, isCmcc3GCamped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isCmcc3GCamped:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    .end local v0           #isCmcc3G:Z
    .end local v1           #networkType:I
    :cond_2
    return-void
.end method
