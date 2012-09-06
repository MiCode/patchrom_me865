.class Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;
.super Lcom/motorola/android/internal/telephony/Precacher$State;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePrecacheLocked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    return-void
.end method


# virtual methods
.method detect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1137
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->iccStatusPending:Z

    .line 1138
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1140
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    .line 1141
    return-void
.end method

.method enter()V
    .locals 2

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->updateIccInfo()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1100(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 1119
    const/4 v1, 0x4

    new-array v0, v1, [Z

    .line 1120
    .local v0, locked:[Z
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/Precacher;->getLockStatus([Z)Z

    .line 1121
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_1

    .line 1122
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheNetworkLocked()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$2000(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_2

    .line 1124
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecachePermPuk()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$2100(Lcom/motorola/android/internal/telephony/Precacher;)V

    goto :goto_0

    .line 1125
    :cond_2
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_3

    .line 1126
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecachePuk()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$2200(Lcom/motorola/android/internal/telephony/Precacher;)V

    goto :goto_0

    .line 1127
    :cond_3
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheLocked()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$2300(Lcom/motorola/android/internal/telephony/Precacher;)V

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    const-string v0, "LOCKED"

    return-object v0
.end method
