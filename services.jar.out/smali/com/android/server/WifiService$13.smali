.class Lcom/android/server/WifiService$13;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;->showWLANPriorityDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/WifiService;->isWLANPriorityDialogTimeOut:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 2583
    iget-object v0, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/android/server/WifiService;->mWLANPriorityDialogTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$2102(Lcom/android/server/WifiService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 2584
    iget-object v0, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialogTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/android/server/WifiService$13$1;

    invoke-direct {v1, p0}, Lcom/android/server/WifiService$13$1;-><init>(Lcom/android/server/WifiService$13;)V

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2591
    return-void
.end method
