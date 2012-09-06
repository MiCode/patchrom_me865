.class Lcom/android/server/WifiService$13$1;
.super Ljava/util/TimerTask;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/WifiService$13;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService$13;)V
    .locals 0
    .parameter

    .prologue
    .line 2584
    iput-object p1, p0, Lcom/android/server/WifiService$13$1;->this$1:Lcom/android/server/WifiService$13;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/server/WifiService$13$1;->this$1:Lcom/android/server/WifiService$13;

    iget-object v0, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/WifiService;->isWLANPriorityDialogTimeOut:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 2588
    return-void
.end method
