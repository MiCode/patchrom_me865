.class abstract Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(I)V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSimUnlocking(Z)V

    .line 262
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPinSimRetries(Ljava/lang/String;)I

    move-result v1

    .line 264
    .local v1, num_retries:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSimUnlocking(Z)V

    .line 266
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$102(I)I

    .line 268
    invoke-static {}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUnlockFailed:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$202(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1           #num_retries:I
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
