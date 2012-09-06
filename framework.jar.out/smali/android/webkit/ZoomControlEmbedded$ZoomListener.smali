.class Landroid/webkit/ZoomControlEmbedded$ZoomListener;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomControlEmbedded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ZoomControlEmbedded;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomControlEmbedded;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomControlEmbedded;Landroid/webkit/ZoomControlEmbedded$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/webkit/ZoomControlEmbedded$ZoomListener;-><init>(Landroid/webkit/ZoomControlEmbedded;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 131
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$200(Landroid/webkit/ZoomControlEmbedded;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    invoke-virtual {v0}, Landroid/webkit/ZoomControlEmbedded;->update()V

    .line 134
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInBackForwardControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #calls: Landroid/webkit/ZoomControlEmbedded;->updateToolBarEnabled()V
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$300(Landroid/webkit/ZoomControlEmbedded;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 1
    .parameter "zoomIn"

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    .line 147
    :goto_0
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    invoke-virtual {v0}, Landroid/webkit/ZoomControlEmbedded;->update()V

    .line 148
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded$ZoomListener;->this$0:Landroid/webkit/ZoomControlEmbedded;

    #getter for: Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomControlEmbedded;->access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto :goto_0
.end method
