.class Landroid/webkit/ZoomControlEmbedded$2;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ZoomControlEmbedded;->createBackForwardContorller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ZoomControlEmbedded;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomControlEmbedded;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Landroid/webkit/ZoomControlEmbedded$2;->this$0:Landroid/webkit/ZoomControlEmbedded;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$2;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$2;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$2;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #calls: Landroid/webkit/ZoomControlEmbedded;->updateToolBarEnabled()V
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$300(Landroid/webkit/ZoomControlEmbedded;)V

    .line 176
    return-void
.end method
