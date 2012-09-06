.class abstract Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimLockRetriesThread"
.end annotation


# instance fields
.field mType:Lcom/android/internal/telephony/IccCard$PinType;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/telephony/IccCard$PinType;)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;->mType:Lcom/android/internal/telephony/IccCard$PinType;

    .line 216
    return-void
.end method


# virtual methods
.method abstract onSimLockRetriesRetrieved(I)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 221
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;->mType:Lcom/android/internal/telephony/IccCard$PinType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$PinType;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getSimLockRetries(I)I

    move-result v1

    .line 223
    .local v1, num_retries:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1           #num_retries:I
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone service exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
