.class abstract Lcom/motorola/android/internal/telephony/Precacher$State;
.super Ljava/lang/Object;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field iccStatusPending:Z

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 1
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->iccStatusPending:Z

    return-void
.end method


# virtual methods
.method detect()V
    .locals 1

    .prologue
    .line 941
    const-string v0, "detect command cached"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher$State;->log(Ljava/lang/String;)V

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->iccStatusPending:Z

    .line 943
    return-void
.end method

.method enter()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method exit()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    const-string v0, "BASE"

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 975
    invoke-static {}, Lcom/motorola/android/internal/telephony/Precacher;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->LOG_PREFIX:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$1000(Lcom/motorola/android/internal/telephony/Precacher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/Precacher$State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_0
    return-void
.end method

.method processEvent(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 949
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v4, :cond_0

    .line 959
    :goto_0
    return v0

    .line 951
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->iccStatusPending:Z

    if-eqz v2, :cond_1

    .line 952
    const-string v2, "detect command exists, redetect"

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher$State;->log(Ljava/lang/String;)V

    .line 953
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f5

    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 955
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v2, v0}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    .line 956
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->iccStatusPending:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 959
    goto :goto_0
.end method
