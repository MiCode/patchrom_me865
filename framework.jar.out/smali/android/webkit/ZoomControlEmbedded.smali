.class Landroid/webkit/ZoomControlEmbedded;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/webkit/ZoomControlBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomControlEmbedded$ZoomListener;
    }
.end annotation


# instance fields
.field private mPageBack:Landroid/widget/ImageButton;

.field private mPageForward:Landroid/widget/ImageButton;

.field private mToolBar:Landroid/widget/LinearLayout;

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private final mZoomManager:Landroid/webkit/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "zoomManager"
    .parameter "webView"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomManager:Landroid/webkit/ZoomManager;

    .line 41
    iput-object p2, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    .line 42
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/ZoomControlEmbedded;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/ZoomControlEmbedded;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/ZoomControlEmbedded;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/webkit/ZoomControlEmbedded;->updateToolBarEnabled()V

    return-void
.end method

.method private createBackForwardContorller()V
    .locals 4

    .prologue
    .line 153
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mPageForward:Landroid/widget/ImageButton;

    .line 154
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mPageBack:Landroid/widget/ImageButton;

    .line 155
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    .line 156
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    const/4 v1, -0x2

    .line 158
    .local v1, wc:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, lParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mPageForward:Landroid/widget/ImageButton;

    const v3, 0x108017e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 160
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mPageBack:Landroid/widget/ImageButton;

    const v3, 0x108017d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 161
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/webkit/ZoomControlEmbedded;->mPageBack:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/webkit/ZoomControlEmbedded;->mPageForward:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mPageForward:Landroid/widget/ImageButton;

    new-instance v3, Landroid/webkit/ZoomControlEmbedded$1;

    invoke-direct {v3, p0}, Landroid/webkit/ZoomControlEmbedded$1;-><init>(Landroid/webkit/ZoomControlEmbedded;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mPageBack:Landroid/widget/ImageButton;

    new-instance v3, Landroid/webkit/ZoomControlEmbedded$2;

    invoke-direct {v3, p0}, Landroid/webkit/ZoomControlEmbedded$2;-><init>(Landroid/webkit/ZoomControlEmbedded;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method private getControls()Landroid/widget/ZoomButtonsController;
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x0

    .line 102
    iget-object v4, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v4, :cond_1

    .line 103
    new-instance v4, Landroid/widget/ZoomButtonsController;

    iget-object v5, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v4, v5}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 104
    iget-object v4, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v5, Landroid/webkit/ZoomControlEmbedded$ZoomListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/webkit/ZoomControlEmbedded$ZoomListener;-><init>(Landroid/webkit/ZoomControlEmbedded;Landroid/webkit/ZoomControlEmbedded$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 108
    iget-object v4, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, controls:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 110
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 111
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    :cond_0
    invoke-direct {p0}, Landroid/webkit/ZoomControlEmbedded;->createBackForwardContorller()V

    .line 116
    const/4 v0, -0x2

    .line 117
    .local v0, WC:I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 118
    .local v2, fParam:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8, v7, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    iget-object v4, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .end local v0           #WC:I
    .end local v1           #controls:Landroid/view/View;
    .end local v2           #fParam:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v4
.end method

.method private updateToolBarEnabled()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mPageForward:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mPageBack:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mPageBack:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mPageForward:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-direct {p0}, Landroid/webkit/ZoomControlEmbedded;->getControls()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isZoomScaleFixed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 49
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isDoubleTapEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 51
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDoubleTapToastCount()I

    move-result v0

    .line 52
    .local v0, count:I
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isInZoomOverview()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 53
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 54
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040339

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 61
    .end local v0           #count:I
    .end local v1           #settings:Landroid/webkit/WebSettings;
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getBuiltInBackForwardControls()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    :cond_1
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mToolBar:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public update()V
    .locals 4

    .prologue
    .line 82
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v0

    .line 87
    .local v0, canZoomIn:Z
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isInZoomOverview()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 88
    .local v1, canZoomOut:Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 90
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :goto_2
    invoke-direct {p0}, Landroid/webkit/ZoomControlEmbedded;->updateToolBarEnabled()V

    goto :goto_0

    .line 87
    .end local v1           #canZoomOut:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 93
    .restart local v1       #canZoomOut:Z
    :cond_2
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 94
    iget-object v2, p0, Landroid/webkit/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_2
.end method
