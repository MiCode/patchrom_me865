.class Lcom/android/server/WifiService$16;
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


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2686
    iput-object p1, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2688
    iget-object v2, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mItemSelectedConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$6300(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2689
    iget-object v2, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    iget-object v3, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mItemSelectedConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$6300(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/WifiService;->enableNetwork(IZ)Z

    .line 2690
    iget-object v2, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2692
    .local v0, connectInfoformat:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mItemSelectedConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$6300(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2693
    .local v1, toastInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2694
    iget-object v2, p0, Lcom/android/server/WifiService$16;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mIsDialogPermittedToShow:Z
    invoke-static {v2, v4}, Lcom/android/server/WifiService;->access$802(Lcom/android/server/WifiService;Z)Z

    .line 2696
    .end local v0           #connectInfoformat:Ljava/lang/String;
    .end local v1           #toastInfo:Ljava/lang/String;
    :cond_0
    return-void
.end method
