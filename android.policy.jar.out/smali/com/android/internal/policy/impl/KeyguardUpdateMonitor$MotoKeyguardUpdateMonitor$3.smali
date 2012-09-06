.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$3;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Landroid/os/Handler;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$3;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$3;->val$this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 871
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$3;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->readLockFlag()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)V

    .line 873
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLawmoContentObserver was called. selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new mLawmoLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$3;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoLock:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method
