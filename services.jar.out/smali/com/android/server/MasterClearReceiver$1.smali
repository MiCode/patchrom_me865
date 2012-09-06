.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 112
    :try_start_0
    sget v1, Landroid/os/RecoverySystem;->WIPE_FLAG_NONE:I

    .line 113
    .local v1, flag:I
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v3, v3, Lcom/android/server/MasterClearReceiver;->wipecalledByLawmo:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v4, "needLocklAfterReboot"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 115
    .local v2, needlockAfterReboot:Z
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v4, v4, Lcom/android/server/MasterClearReceiver;->wipeSdcard:Z

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v5, v5, Lcom/android/server/MasterClearReceiver;->wipeSilent:Z

    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v6, v6, Lcom/android/server/MasterClearReceiver;->wipeBp:Z

    invoke-static {v3, v4, v5, v6, v2}, Landroid/os/RecoverySystem;->rebootWipeUserDataByLawmo(Landroid/content/Context;ZZZZ)V

    .line 138
    .end local v1           #flag:I
    .end local v2           #needlockAfterReboot:Z
    :goto_0
    return-void

    .line 118
    .restart local v1       #flag:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v3, v3, Lcom/android/server/MasterClearReceiver;->wipeSdcard:Z

    if-eqz v3, :cond_1

    .line 119
    sget v3, Landroid/os/RecoverySystem;->WIPE_FLAG_SD:I

    or-int/2addr v1, v3

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v3, v3, Lcom/android/server/MasterClearReceiver;->wipeSilent:Z

    if-eqz v3, :cond_2

    .line 122
    sget v3, Landroid/os/RecoverySystem;->WIPE_FLAG_SILENT:I

    or-int/2addr v1, v3

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v3, v3, Lcom/android/server/MasterClearReceiver;->wipeBp:Z

    if-eqz v3, :cond_3

    .line 125
    sget v3, Landroid/os/RecoverySystem;->WIPE_FLAG_BP:I

    or-int/2addr v1, v3

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v3, v3, Lcom/android/server/MasterClearReceiver;->wipeInternalStorage:Z

    if-eqz v3, :cond_4

    .line 129
    sget v3, Landroid/os/RecoverySystem;->WIPE_INTERNAL_STORAGE:I

    or-int/2addr v1, v3

    .line 132
    :cond_4
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;I)V

    .line 134
    const-string v3, "MasterClear"

    const-string v4, "Still running after master clear?!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #flag:I
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MasterClear"

    const-string v4, "Can\'t perform master clear/factory reset"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
