.class Landroid/content/ContentService$ObserverHolder;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverHolder"
.end annotation


# instance fields
.field public final observer:Landroid/database/IContentObserver;

.field private final observerHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/content/ContentService$ObserverHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final tokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/database/IContentObserver;Landroid/content/ContentService;)V
    .locals 3
    .parameter "o"
    .parameter "service"

    .prologue
    .line 543
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    .line 546
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/content/ContentService$ObserverHolder;->tokens:Ljava/util/HashMap;

    .line 548
    #getter for: Landroid/content/ContentService;->mObserverHolders:Ljava/util/HashMap;
    invoke-static {p2}, Landroid/content/ContentService;->access$100(Landroid/content/ContentService;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/content/ContentService$ObserverHolder;->observerHolders:Ljava/util/HashMap;

    .line 550
    :try_start_0
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/content/ContentService$ObserverHolder;->binderDied()V

    goto :goto_0
.end method

.method public static get(Landroid/database/IContentObserver;Landroid/content/ContentService$ObserverNode;ILandroid/content/ContentService;)Landroid/content/ContentService$ObserverHolder;
    .locals 5
    .parameter "o"
    .parameter "node"
    .parameter "token"
    .parameter "service"

    .prologue
    .line 583
    invoke-interface {p0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 584
    .local v0, b:Landroid/os/IBinder;
    #getter for: Landroid/content/ContentService;->mObserverHolders:Ljava/util/HashMap;
    invoke-static {p3}, Landroid/content/ContentService;->access$100(Landroid/content/ContentService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverHolder;

    .line 585
    .local v1, h:Landroid/content/ContentService$ObserverHolder;
    if-nez v1, :cond_0

    .line 586
    new-instance v1, Landroid/content/ContentService$ObserverHolder;

    .end local v1           #h:Landroid/content/ContentService$ObserverHolder;
    invoke-direct {v1, p0, p3}, Landroid/content/ContentService$ObserverHolder;-><init>(Landroid/database/IContentObserver;Landroid/content/ContentService;)V

    .line 589
    .restart local v1       #h:Landroid/content/ContentService$ObserverHolder;
    :cond_0
    const-string v3, "mutex"

    monitor-enter v3

    .line 590
    :try_start_0
    iget-object v2, v1, Landroid/content/ContentService$ObserverHolder;->tokens:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    #getter for: Landroid/content/ContentService;->mObserverHolders:Ljava/util/HashMap;
    invoke-static {p3}, Landroid/content/ContentService;->access$100(Landroid/content/ContentService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-object v1

    .line 591
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public binderDied()V
    .locals 8

    .prologue
    .line 557
    const-string v7, "mutex"

    monitor-enter v7

    .line 559
    :try_start_0
    iget-object v6, p0, Landroid/content/ContentService$ObserverHolder;->tokens:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 560
    .local v5, values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentService$ObserverNode;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v4, v6, [Landroid/content/ContentService$ObserverNode;

    .line 561
    .local v4, nodes:[Landroid/content/ContentService$ObserverNode;
    invoke-interface {v5, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #nodes:[Landroid/content/ContentService$ObserverNode;
    check-cast v4, [Landroid/content/ContentService$ObserverNode;

    .line 562
    .restart local v4       #nodes:[Landroid/content/ContentService$ObserverNode;
    move-object v0, v4

    .local v0, arr$:[Landroid/content/ContentService$ObserverNode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 574
    .local v3, n:Landroid/content/ContentService$ObserverNode;
    iget-object v6, p0, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v3, v6}, Landroid/content/ContentService$ObserverNode;->removeAllObserverLocked(Landroid/database/IContentObserver;)Z

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v3           #n:Landroid/content/ContentService$ObserverNode;
    :cond_0
    monitor-exit v7

    .line 578
    return-void

    .line 576
    .end local v0           #arr$:[Landroid/content/ContentService$ObserverNode;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #nodes:[Landroid/content/ContentService$ObserverNode;
    .end local v5           #values:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentService$ObserverNode;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public release(Landroid/database/IContentObserver;I)Z
    .locals 6
    .parameter "o"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 598
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 599
    .local v1, bo:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/content/ContentService$ObserverHolder;->observer:Landroid/database/IContentObserver;

    invoke-interface {v3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 601
    .local v0, bi:Landroid/os/IBinder;
    const-string v3, "mutex"

    monitor-enter v3

    .line 602
    if-ne v1, v0, :cond_1

    :try_start_0
    iget-object v4, p0, Landroid/content/ContentService$ObserverHolder;->tokens:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 603
    iget-object v2, p0, Landroid/content/ContentService$ObserverHolder;->tokens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 604
    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 605
    iget-object v2, p0, Landroid/content/ContentService$ObserverHolder;->observerHolders:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_0
    const/4 v2, 0x1

    monitor-exit v3

    .line 611
    :goto_0
    return v2

    .line 609
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
