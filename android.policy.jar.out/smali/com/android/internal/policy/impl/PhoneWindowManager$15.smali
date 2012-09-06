.class Lcom/android/internal/policy/impl/PhoneWindowManager$15;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4086
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4088
    const-string v1, "com.motorola.internal.intent.action.DEEP_SLEEP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4089
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4090
    .local v0, deepsleep:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsDeepSleep:Z
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$302(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 4091
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deep sleep mode change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsDeepSleep:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    .end local v0           #deepsleep:I
    :cond_0
    return-void

    .line 4090
    .restart local v0       #deepsleep:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
