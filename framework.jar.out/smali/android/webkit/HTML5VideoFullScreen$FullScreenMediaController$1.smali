.class Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController$1;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController$1;->this$0:Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 357
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController$1;->this$0:Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->skipShow:Z

    .line 358
    return-void
.end method
