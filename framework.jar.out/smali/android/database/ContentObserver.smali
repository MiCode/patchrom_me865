.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$Transport;,
        Landroid/database/ContentObserver$NotificationRunnable;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_OBSERVER_TIMING_THRESHOLD:J = 0x0L

.field public static final INVALID_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ContentObserver"

.field private static final isDebugObserverEnabled:Z

.field private static lock:Ljava/lang/Object;

.field private static sTokenCounter:I

.field private static sTransport:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/ContentObserver$Transport;",
            ">;"
        }
    .end annotation
.end field

.field private static final timingThreshold:J


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mRegisteredCounter:I

.field private mRegisteredObserverTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x0

    sput-object v0, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    .line 57
    sput v1, Landroid/database/ContentObserver;->sTokenCounter:I

    .line 63
    const-string v0, "debug.observer.timing"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/database/ContentObserver;->isDebugObserverEnabled:Z

    .line 65
    const-string v0, "debug.observer.timing.threshold"

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/database/ContentObserver;->timingThreshold:J

    .line 66
    sget-wide v0, Landroid/database/ContentObserver;->timingThreshold:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    :goto_0
    sput-wide v0, Landroid/database/ContentObserver;->DEBUG_OBSERVER_TIMING_THRESHOLD:J

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    return-void

    .line 66
    :cond_0
    sget-wide v0, Landroid/database/ContentObserver;->timingThreshold:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 255
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver;->mRegisteredObserverTracker:Ljava/util/HashMap;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I

    .line 256
    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    .line 258
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->mRegisteredObserverTracker:Ljava/util/HashMap;

    .line 261
    :cond_0
    sget-object v1, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    sget v0, Landroid/database/ContentObserver;->sTokenCounter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/database/ContentObserver;->sTokenCounter:I

    iput v0, p0, Landroid/database/ContentObserver;->mToken:I

    .line 263
    monitor-exit v1

    .line 265
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Landroid/database/ContentObserver;->isDebugObserverEnabled:Z

    return v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Landroid/database/ContentObserver;->DEBUG_OBSERVER_TIMING_THRESHOLD:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/database/ContentObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/database/ContentObserver;->mToken:I

    return v0
.end method


# virtual methods
.method public final _getInternalToken()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/database/ContentObserver;->mToken:I

    return v0
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchChange(Z)V
    .locals 12
    .parameter "selfChange"

    .prologue
    .line 429
    iget-object v8, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v8, :cond_2

    .line 433
    sget-boolean v8, Landroid/database/ContentObserver;->isDebugObserverEnabled:Z

    if-nez v8, :cond_1

    .line 434
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 437
    .local v2, now:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 438
    .local v4, threadnow:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 440
    .local v0, nanonow:J
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v4

    .line 443
    .local v6, threadtime:J
    sget-wide v8, Landroid/database/ContentObserver;->DEBUG_OBSERVER_TIMING_THRESHOLD:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 444
    const-string v8, "ContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time Measurement: onChange (no handler) for observer class: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , time in this thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , took total time: (ms) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , (ns): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , pid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , selfChange : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    .end local v0           #nanonow:J
    .end local v2           #now:J
    .end local v4           #threadnow:J
    .end local v6           #threadtime:J
    :cond_2
    iget-object v8, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v9, Landroid/database/ContentObserver$NotificationRunnable;

    invoke-direct {v9, p0, p1}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 373
    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v7, :cond_1

    .line 374
    iget-object v3, p0, Landroid/database/ContentObserver;->mRegisteredObserverTracker:Ljava/util/HashMap;

    .line 376
    .local v3, r:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 407
    .end local v3           #r:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    :goto_0
    return-void

    .line 379
    .restart local v3       #r:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 380
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 381
    .local v6, uri:Landroid/net/Uri;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 383
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "ContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** possible bug *** Unreleased Content Observer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 387
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    .end local v5           #t:Ljava/lang/Throwable;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v8, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 388
    :try_start_0
    iget v7, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I

    if-gtz v7, :cond_2

    .line 389
    monitor-exit v8

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 392
    :cond_2
    :try_start_1
    const-string v7, "ContentObserver"

    const-string v9, "cleaning up the content observers..."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    .line 394
    .local v0, contentObserver:Landroid/database/IContentObserver;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v4

    .line 395
    .local v4, service:Landroid/content/IContentService;
    if-eqz v0, :cond_3

    if-nez v4, :cond_4

    .line 396
    :cond_3
    monitor-exit v8

    goto :goto_0

    .line 399
    :cond_4
    :goto_2
    iget v7, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I

    add-int/lit8 v9, v7, -0x1

    iput v9, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v7, :cond_5

    .line 401
    :try_start_2
    iget v7, p0, Landroid/database/ContentObserver;->mToken:I

    invoke-interface {v4, v0, v7}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 402
    :catch_0
    move-exception v7

    goto :goto_2

    .line 405
    :cond_5
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .locals 3

    .prologue
    .line 273
    sget-object v2, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 276
    :try_start_0
    sget-object v1, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver$Transport;

    .local v0, transport:Landroid/database/ContentObserver$Transport;
    if-nez v0, :cond_1

    .line 277
    .end local v0           #transport:Landroid/database/ContentObserver$Transport;
    :cond_0
    new-instance v0, Landroid/database/ContentObserver$Transport;

    invoke-direct {v0, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    .line 278
    .restart local v0       #transport:Landroid/database/ContentObserver$Transport;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    .line 280
    :cond_1
    invoke-virtual {v0, p0}, Landroid/database/ContentObserver$Transport;->addContentObserver(Landroid/database/ContentObserver;)V

    .line 281
    monitor-exit v2

    return-object v0

    .line 283
    .end local v0           #transport:Landroid/database/ContentObserver$Transport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 426
    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .locals 4

    .prologue
    .line 293
    sget-object v3, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, oldTransport:Landroid/database/ContentObserver$Transport;
    :try_start_0
    sget-object v2, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 298
    sget-object v2, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/ContentObserver$Transport;

    move-object v1, v0

    .line 299
    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1, p0}, Landroid/database/ContentObserver$Transport;->releaseContentObserver(Landroid/database/ContentObserver;)V

    .line 304
    :cond_0
    monitor-exit v3

    return-object v1

    .line 306
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public trackRegisterContentObserver(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 319
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_1

    .line 320
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "registerContentObserver"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, t:Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/database/ContentObserver;->mRegisteredObserverTracker:Ljava/util/HashMap;

    .line 323
    .local v2, r:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    const-string v4, "ContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** possible bug *** "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has been registered for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " previously but not unregistered. But now trying to register again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v2           #r:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/lang/Throwable;>;"
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_1
    sget-object v5, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, o:Landroid/database/ContentObserver$Transport;
    :try_start_0
    sget-object v4, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    .line 333
    sget-object v4, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/database/ContentObserver$Transport;

    move-object v1, v0

    .line 334
    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {v1, p0}, Landroid/database/ContentObserver$Transport;->addStrongRef(Landroid/database/ContentObserver;)V

    .line 339
    :cond_2
    iget v4, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I

    .line 340
    monitor-exit v5

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public trackUnregisterContentObserver()V
    .locals 4

    .prologue
    .line 352
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Landroid/database/ContentObserver;->mRegisteredObserverTracker:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 355
    :cond_0
    sget-object v3, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, o:Landroid/database/ContentObserver$Transport;
    :try_start_0
    sget-object v2, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 359
    sget-object v2, Landroid/database/ContentObserver;->sTransport:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/ContentObserver$Transport;

    move-object v1, v0

    .line 360
    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {v1, p0}, Landroid/database/ContentObserver$Transport;->removeStrongRef(Landroid/database/ContentObserver;)V

    .line 365
    :cond_1
    iget v2, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/database/ContentObserver;->mRegisteredCounter:I

    .line 366
    monitor-exit v3

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
