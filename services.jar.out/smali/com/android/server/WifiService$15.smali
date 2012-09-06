.class Lcom/android/server/WifiService$15;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;->showWLANConfigCandidateDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;

.field final synthetic val$configs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/android/server/WifiService$15;->this$0:Lcom/android/server/WifiService;

    iput-object p2, p0, Lcom/android/server/WifiService$15;->val$configs:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2682
    iget-object v1, p0, Lcom/android/server/WifiService$15;->this$0:Lcom/android/server/WifiService;

    iget-object v0, p0, Lcom/android/server/WifiService$15;->val$configs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #setter for: Lcom/android/server/WifiService;->mItemSelectedConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v0}, Lcom/android/server/WifiService;->access$6302(Lcom/android/server/WifiService;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 2684
    return-void
.end method
