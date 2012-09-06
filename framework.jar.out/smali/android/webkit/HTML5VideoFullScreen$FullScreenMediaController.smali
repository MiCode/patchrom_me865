.class Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FullScreenMediaController"
.end annotation


# instance fields
.field hideNav:Z

.field mVideoView:Landroid/view/View;

.field skipShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "video"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->skipShow:Z

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->hideNav:Z

    .line 352
    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    .line 353
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController$1;

    invoke-direct {v1, p0}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController$1;-><init>(Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 361
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->hideNav:Z

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 377
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 378
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->hideNav:Z

    if-eqz v0, :cond_0

    .line 379
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->skipShow:Z

    .line 380
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 383
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->hideNav:Z

    .line 384
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->skipShow:Z

    if-eqz v0, :cond_1

    .line 366
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->skipShow:Z

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 369
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
