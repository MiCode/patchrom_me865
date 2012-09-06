.class Landroid/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverEntry"
.end annotation


# instance fields
.field public final notifyForDescendents:Z

.field public observerHolder:Landroid/content/ContentService$ObserverHolder;

.field private final observersLock:Ljava/lang/Object;

.field public final pid:I

.field final synthetic this$0:Landroid/content/ContentService$ObserverNode;

.field public final token:I

.field public final uid:I


# direct methods
.method public constructor <init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/content/ContentService;)V
    .locals 1
    .parameter
    .parameter "o"
    .parameter "n"
    .parameter "observersLock"
    .parameter "_uid"
    .parameter "_pid"
    .parameter "_token"
    .parameter "content"

    .prologue
    .line 634
    iput-object p1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->this$0:Landroid/content/ContentService$ObserverNode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p4, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    .line 637
    iput p5, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 638
    iput p6, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 639
    iput-boolean p3, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    .line 641
    invoke-static {p2, p1, p7, p8}, Landroid/content/ContentService$ObserverHolder;->get(Landroid/database/IContentObserver;Landroid/content/ContentService$ObserverNode;ILandroid/content/ContentService;)Landroid/content/ContentService$ObserverHolder;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    .line 642
    iput p7, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->token:I

    .line 644
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"
    .parameter "name"
    .parameter "prefix"
    .parameter "pidCounts"

    .prologue
    .line 648
    iget v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    iget v1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p6, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": pid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    iget v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    iget-object v0, v0, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observerHolder:Landroid/content/ContentService$ObserverHolder;

    iget-object v0, v0, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
