.class Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;
.super Ljava/lang/Object;
.source "DeepSleepManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/os/DeepSleepManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeepSleepConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/os/DeepSleepManager;


# direct methods
.method private constructor <init>(Lcom/motorola/android/os/DeepSleepManager;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;->this$0:Lcom/motorola/android/os/DeepSleepManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/os/DeepSleepManager;Lcom/motorola/android/os/DeepSleepManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;-><init>(Lcom/motorola/android/os/DeepSleepManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-static {p2}, Lcom/motorola/android/os/IDeepSleepService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/os/DeepSleepManager;->access$102(Lcom/motorola/android/os/IDeepSleepService;)Lcom/motorola/android/os/IDeepSleepService;

    .line 185
    invoke-static {}, Lcom/motorola/android/os/DeepSleepManager;->access$100()Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;->this$0:Lcom/motorola/android/os/DeepSleepManager;

    #getter for: Lcom/motorola/android/os/DeepSleepManager;->mPendingAction:I
    invoke-static {v3}, Lcom/motorola/android/os/DeepSleepManager;->access$200(Lcom/motorola/android/os/DeepSleepManager;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/motorola/android/os/DeepSleepManager;->access$100()Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;->this$0:Lcom/motorola/android/os/DeepSleepManager;

    #getter for: Lcom/motorola/android/os/DeepSleepManager;->mPendingAction:I
    invoke-static {v4}, Lcom/motorola/android/os/DeepSleepManager;->access$200(Lcom/motorola/android/os/DeepSleepManager;)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-interface {v3, v1}, Lcom/motorola/android/os/IDeepSleepService;->enableDeepSleepMode(Z)V

    .line 188
    iget-object v1, p0, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;->this$0:Lcom/motorola/android/os/DeepSleepManager;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/android/os/DeepSleepManager;->mPendingAction:I
    invoke-static {v1, v2}, Lcom/motorola/android/os/DeepSleepManager;->access$202(Lcom/motorola/android/os/DeepSleepManager;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 187
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeepSleepManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDeepSleepMode caught exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/android/os/DeepSleepManager;->access$102(Lcom/motorola/android/os/IDeepSleepService;)Lcom/motorola/android/os/IDeepSleepService;

    .line 201
    return-void
.end method
