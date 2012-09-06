.class public final Landroid/database/CursorToBulkCursorAdaptor;
.super Landroid/database/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mCursor:Landroid/database/CrossProcessCursor;

.field private mFilledWindow:Landroid/database/CursorWindow;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/IContentObserver;ILjava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "observer"
    .parameter "token"
    .parameter "providerName"

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/database/BulkCursorNative;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    .line 101
    instance-of v0, p1, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Landroid/database/CrossProcessCursor;

    .end local p1
    iput-object p1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 106
    :goto_0
    iput-object p4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-direct {p0, p2, p3}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;I)V

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    return-void

    .line 104
    .restart local p1
    :cond_0
    new-instance v0, Landroid/database/CrossProcessCursorWrapper;

    invoke-direct {v0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    goto :goto_0

    .line 112
    .end local p1
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private closeFilledWindowLocked()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 120
    :cond_0
    return-void
.end method

.method private createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;I)V
    .locals 2
    .parameter "observer"
    .parameter "token"

    .prologue
    .line 273
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "an observer is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-direct {v0, p1, p2, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Landroid/database/IContentObserver;ILandroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 279
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 280
    return-void
.end method

.method private disposeLocked()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 125
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 129
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 130
    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method

.method private unregisterObserverProxyLocked()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-virtual {v0, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->disposeLocked()V

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public count()I
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 195
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v0

    monitor-exit v1

    return v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 213
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deactivate()V

    .line 216
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 204
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 296
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 260
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWindow(I)Landroid/database/CursorWindow;
    .locals 4
    .parameter "startPos"

    .prologue
    .line 147
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 150
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 152
    const/4 v0, 0x0

    monitor-exit v2

    .line 177
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 156
    .local v0, window:Landroid/database/CursorWindow;
    if-eqz v0, :cond_3

    .line 157
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V

    .line 174
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 177
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 178
    .end local v0           #window:Landroid/database/CursorWindow;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 159
    .restart local v0       #window:Landroid/database/CursorWindow;
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 160
    if-nez v0, :cond_4

    .line 161
    new-instance v1, Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 162
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mFilledWindow:Landroid/database/CursorWindow;

    .line 163
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1, v0}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    goto :goto_1

    .line 164
    :cond_4
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p1, v1, :cond_5

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    add-int/2addr v1, v3

    if-lt p1, v1, :cond_1

    .line 166
    :cond_5
    invoke-virtual {v0}, Landroid/database/CursorWindow;->clear()V

    .line 167
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1, v0}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onMove(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 183
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 186
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requery(Landroid/database/IContentObserver;I)I
    .locals 5
    .parameter "observer"
    .parameter "token"

    .prologue
    .line 231
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 232
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 234
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->closeFilledWindowLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :try_start_1
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->requery()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 238
    const/4 v2, -0x1

    :try_start_2
    monitor-exit v3

    .line 251
    :goto_0
    return v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Requery misuse db, mCursor isClosed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v4}, Landroid/database/CrossProcessCursor;->isClosed()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .local v1, leakProgram:Ljava/lang/IllegalStateException;
    throw v1

    .line 252
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #leakProgram:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 247
    :cond_0
    :try_start_3
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->unregisterObserverProxyLocked()V

    .line 249
    invoke-direct {p0, p1, p2}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxyLocked(Landroid/database/IContentObserver;I)V

    .line 251
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "extras"

    .prologue
    .line 302
    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->throwIfCursorIsClosed()V

    .line 305
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
