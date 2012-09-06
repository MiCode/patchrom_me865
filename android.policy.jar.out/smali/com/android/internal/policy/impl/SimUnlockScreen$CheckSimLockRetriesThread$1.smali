.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;

.field final synthetic val$num_retries:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;

    iput p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$1;->val$num_retries:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread$1;->val$num_retries:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimLockRetriesThread;->onSimLockRetriesRetrieved(I)V

    .line 226
    return-void
.end method
