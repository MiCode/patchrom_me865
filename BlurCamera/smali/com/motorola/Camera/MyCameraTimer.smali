.class public Lcom/motorola/Camera/MyCameraTimer;
.super Ljava/lang/Object;
.source "MyCameraTimer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyCameraTimer"


# instance fields
.field private isFirstTime:Z

.field private mTimeout:J

.field private startTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .parameter "timeout"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/motorola/Camera/MyCameraTimer;->isFirstTime:Z

    .line 9
    iput-wide v1, p0, Lcom/motorola/Camera/MyCameraTimer;->startTime:J

    .line 10
    iput-wide v1, p0, Lcom/motorola/Camera/MyCameraTimer;->mTimeout:J

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/Camera/MyCameraTimer;->reset(JZ)V

    .line 15
    return-void
.end method


# virtual methods
.method public isTimeout()Z
    .locals 7

    .prologue
    .line 26
    const/4 v0, 0x1

    .line 28
    .local v0, bReturn:Z
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/motorola/Camera/MyCameraTimer;->isFirstTime:Z

    if-ne v3, v4, :cond_0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/Camera/MyCameraTimer;->startTime:J

    .line 32
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/Camera/MyCameraTimer;->isFirstTime:Z

    .line 33
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    .line 38
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 39
    .local v1, curr:J
    iget-wide v3, p0, Lcom/motorola/Camera/MyCameraTimer;->startTime:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/Camera/MyCameraTimer;->mTimeout:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x1

    .line 43
    iput-wide v1, p0, Lcom/motorola/Camera/MyCameraTimer;->startTime:J

    goto :goto_0
.end method

.method public reset(JZ)V
    .locals 2
    .parameter "timeout"
    .parameter "firstTime"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/motorola/Camera/MyCameraTimer;->mTimeout:J

    .line 20
    iput-boolean p3, p0, Lcom/motorola/Camera/MyCameraTimer;->isFirstTime:Z

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/Camera/MyCameraTimer;->startTime:J

    .line 22
    return-void
.end method
