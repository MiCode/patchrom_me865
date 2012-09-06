.class Lcom/motorola/server/location/MotGpsLocationProvider$1;
.super Landroid/location/IGpsStatusProvider$Stub;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener is null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 402
    :cond_0
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 403
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 404
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 405
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 406
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;

    .line 407
    .local v4, test:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    iget-object v5, v4, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    monitor-exit v6

    .line 417
    .end local v4           #test:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :goto_1
    return-void

    .line 405
    .restart local v4       #test:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v4           #test:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :cond_2
    new-instance v2, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;

    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct {v2, v5, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/location/IGpsStatusListener;)V

    .line 414
    .local v2, l:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 415
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    monitor-exit v6

    goto :goto_1

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener is null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 424
    :cond_0
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 425
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 426
    .local v0, binder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 427
    .local v2, l:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 428
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 429
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;

    .line 430
    .local v4, test:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    iget-object v5, v4, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 431
    move-object v2, v4

    .line 428
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v4           #test:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    :cond_2
    if-eqz v2, :cond_3

    .line 436
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$1;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 437
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 439
    :cond_3
    monitor-exit v6

    .line 440
    return-void

    .line 439
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
