.class Lcom/android/internal/app/ShutdownThread$3;
.super Landroid/telephony/PhoneStateListener;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->prepare(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownThread;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->access$102(Lcom/android/internal/app/ShutdownThread;Z)Z

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    #getter for: Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff:Z
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$100(Lcom/android/internal/app/ShutdownThread;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    #getter for: Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff2:Z
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$200(Lcom/android/internal/app/ShutdownThread;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    #getter for: Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$300(Lcom/android/internal/app/ShutdownThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread$3;->this$0:Lcom/android/internal/app/ShutdownThread;

    #getter for: Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$300(Lcom/android/internal/app/ShutdownThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_1
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 408
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
