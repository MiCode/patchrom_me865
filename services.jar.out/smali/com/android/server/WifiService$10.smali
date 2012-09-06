.class Lcom/android/server/WifiService$10;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;->showRSSIWeakDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;

.field final synthetic val$finalconfigs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2406
    iput-object p1, p0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    iput-object p2, p0, Lcom/android/server/WifiService$10;->val$finalconfigs:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/server/WifiService$10;->this$0:Lcom/android/server/WifiService;

    iget-object v1, p0, Lcom/android/server/WifiService$10;->val$finalconfigs:Ljava/util/ArrayList;

    #calls: Lcom/android/server/WifiService;->showWLANConfigCandidateDialog(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$6200(Lcom/android/server/WifiService;Ljava/util/ArrayList;)V

    .line 2410
    return-void
.end method
