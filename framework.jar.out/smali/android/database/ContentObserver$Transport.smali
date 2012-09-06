.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field mContentObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/ContentObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field mStrongRefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "contentObserver"

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mStrongRefs:Ljava/util/HashSet;

    .line 143
    return-void
.end method


# virtual methods
.method public addContentObserver(Landroid/database/ContentObserver;)V
    .locals 7
    .parameter "contentObserver"

    .prologue
    .line 182
    iget-object v5, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 184
    :try_start_0
    iget-object v4, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, b:Z
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 188
    .local v3, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/ContentObserver;

    .line 189
    .local v2, o:Landroid/database/ContentObserver;
    if-nez v2, :cond_1

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 202
    .end local v0           #b:Z
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    .end local v2           #o:Landroid/database/ContentObserver;
    .end local v3           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 193
    .restart local v0       #b:Z
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    .restart local v2       #o:Landroid/database/ContentObserver;
    .restart local v3       #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 198
    .end local v2           #o:Landroid/database/ContentObserver;
    .end local v3           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 199
    iget-object v4, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    return-void
.end method

.method addStrongRef(Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "contentObserver"

    .prologue
    .line 230
    iget-object v1, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mStrongRefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverSelfNotifications(Landroid/database/ContentObserver;)Z
    .locals 1
    .parameter "contentObserver"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChange(ZI)V
    .locals 6
    .parameter "selfChange"
    .parameter "token"

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, observer:Landroid/database/ContentObserver;
    iget-object v5, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 159
    :try_start_0
    iget-object v4, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 160
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 162
    .local v3, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 163
    .local v1, o:Landroid/database/ContentObserver;
    if-nez v1, :cond_1

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 173
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    .end local v1           #o:Landroid/database/ContentObserver;
    .end local v3           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 168
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    .restart local v1       #o:Landroid/database/ContentObserver;
    .restart local v3       #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :cond_1
    :try_start_1
    #getter for: Landroid/database/ContentObserver;->mToken:I
    invoke-static {v1}, Landroid/database/ContentObserver;->access$200(Landroid/database/ContentObserver;)I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 169
    move-object v2, v1

    .line 173
    .end local v1           #o:Landroid/database/ContentObserver;
    .end local v3           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-eqz v2, :cond_3

    .line 176
    invoke-virtual {v2, p1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 178
    :cond_3
    return-void
.end method

.method public releaseContentObserver(Landroid/database/ContentObserver;)V
    .locals 5
    .parameter "contentObserver"

    .prologue
    .line 208
    iget-object v4, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 210
    :try_start_0
    iget-object v3, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 211
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 213
    .local v2, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 214
    .local v1, o:Landroid/database/ContentObserver;
    if-nez v1, :cond_1

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 224
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    .end local v1           #o:Landroid/database/ContentObserver;
    .end local v2           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 218
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;>;"
    .restart local v1       #o:Landroid/database/ContentObserver;
    .restart local v2       #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 224
    .end local v1           #o:Landroid/database/ContentObserver;
    .end local v2           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/ContentObserver;>;"
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    return-void
.end method

.method removeStrongRef(Landroid/database/ContentObserver;)V
    .locals 2
    .parameter "contentObserver"

    .prologue
    .line 236
    iget-object v1, p0, Landroid/database/ContentObserver$Transport;->mContentObservers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mStrongRefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
