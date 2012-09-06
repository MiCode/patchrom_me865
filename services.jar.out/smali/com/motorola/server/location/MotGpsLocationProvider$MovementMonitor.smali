.class public final Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
.super Ljava/lang/Object;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MovementMonitor"
.end annotation


# static fields
.field public static final EXTRA_GPS_SAVINGS_ON:Ljava/lang/String; = "savings_on"

.field public static final GPS_SAVINGS_CHANGE_ACTION:Ljava/lang/String; = "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

.field private static final MIN_PROPAGATION_INTERVAL:I = 0x1388

.field private static final NO_FIX_MVMT_MON_RESET_TIMEOUT:I = 0xea60

.field private static final NO_MVMT_FIX_TIMEOUT:I = 0x249f0

.field private static final NO_MVMT_NO_FIX_TIMEOUT:I = 0x1d4c0

.field private static final STATE_MON_FIX:I = 0x2

.field private static final STATE_MON_NO_FIX:I = 0x1

.field private static final STATE_PROPAGATE:I = 0x3

.field private static final STATE_SLEEP:I = 0x4

.field private static final STATE_STOP:I


# instance fields
.field private mCharging:Z

.field private mEndDuration:I

.field private mExpectEnd:Z

.field private mFirstCb:Z

.field private final mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

.field private final mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

.field private mPropInterval:I

.field private mPropagateTime:J

.field private mState:I

.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;Lcom/motorola/sensorhub/SensorHub;)V
    .locals 2
    .parameter
    .parameter "mvmtMgr"

    .prologue
    const/4 v1, 0x0

    .line 2148
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2333
    new-instance v0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;

    invoke-direct {v0, p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)V

    iput-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    .line 2149
    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    .line 2150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 2151
    iput-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    .line 2152
    const v0, 0x1d4c0

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 2153
    const/16 v0, 0x1388

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 2154
    iput-object p2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    .line 2155
    return-void
.end method

.method static synthetic access$4600(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2113
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2113
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2113
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2113
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    return v0
.end method

.method static synthetic access$4802(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2113
    iput p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    return p1
.end method

.method static synthetic access$4900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2113
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    return-void
.end method

.method static synthetic access$5002(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2113
    iput-wide p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropagateTime:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2113
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    return v0
.end method

.method static synthetic access$5200(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2113
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2113
    invoke-direct {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->propagate()V

    return-void
.end method

.method private broadcastSavings(Z)V
    .locals 2
    .parameter "savingsOn"

    .prologue
    .line 2239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2240
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "savings_on"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2241
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2242
    return-void
.end method

.method private propagate()V
    .locals 8

    .prologue
    .line 2312
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "MovementMonitor propagate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iget v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 2314
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "propagate() called when not propagating!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :goto_0
    return-void

    .line 2320
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2321
    .local v3, now:J
    iget-wide v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropagateTime:J

    sub-long v1, v3, v5

    .line 2322
    .local v1, elapsed:J
    iput-wide v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropagateTime:J

    .line 2323
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4300(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/Location;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4300(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 2324
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4400(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/ILocationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4300(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V

    .line 2325
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J
    invoke-static {v5, v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4502(Lcom/motorola/server/location/MotGpsLocationProvider;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    .end local v1           #elapsed:J
    .end local v3           #now:J
    :goto_1
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v7

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V
    invoke-static {v5, v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$700(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 2326
    :catch_0
    move-exception v0

    .line 2327
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "RemoteException calling reportLocation"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private start(Z)V
    .locals 5
    .parameter "fix"

    .prologue
    const v4, 0x249f0

    const/16 v0, 0x1388

    const/4 v1, 0x1

    .line 2264
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2265
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2270
    :cond_0
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v2

    const v3, 0xea60

    if-lt v2, v3, :cond_1

    .line 2271
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor start, fix interval too long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :goto_0
    return-void

    .line 2275
    :cond_1
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v2

    if-le v2, v0, :cond_2

    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 2277
    iput-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 2279
    if-eqz p1, :cond_4

    .line 2280
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    if-gt v0, v4, :cond_3

    .line 2281
    iput v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 2289
    :goto_1
    const-string v0, "MotGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MovementMonitor start, prop interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    iget v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    div-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3500(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/motorola/sensorhub/SensorHub;->registerMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;IILandroid/os/Looper;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2293
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2283
    :cond_3
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 2286
    :cond_4
    const v0, 0x1d4c0

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 2295
    :cond_5
    const-string v0, "MotGpsLocationProvider"

    const-string v2, "registered MovementListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    if-eqz p1, :cond_6

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public isMonitoring()Z
    .locals 1

    .prologue
    .line 2164
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropagating()Z
    .locals 2

    .prologue
    .line 2168
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitor(Z)V
    .locals 3
    .parameter "fix"

    .prologue
    .line 2245
    iget-boolean v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eqz v0, :cond_0

    .line 2246
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "monitor() ignoring monitor for charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    :goto_0
    return-void

    .line 2250
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2252
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor monitor, fix in mon fix state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2256
    :cond_1
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovementMonitor monitor, fix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fix interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3900(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2260
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->start(Z)V

    goto :goto_0
.end method

.method public setNoFixAlarm(I)V
    .locals 6
    .parameter "triggerOffset"

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3900(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2161
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2309
    :goto_0
    return-void

    .line 2306
    :cond_0
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    .line 2308
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/sensorhub/SensorHub;

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/sensorhub/SensorHub$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/sensorhub/SensorHub;->unregisterMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;)V

    goto :goto_0
.end method

.method public updateCharging(Z)V
    .locals 6
    .parameter "charging"

    .prologue
    const/4 v5, 0x0

    .line 2195
    iget-boolean v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eq v1, p1, :cond_2

    .line 2196
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2197
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "stopping for charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2201
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    monitor-enter v2

    .line 2203
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 2206
    .local v0, changed:Z
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4000(Lcom/motorola/server/location/MotGpsLocationProvider;ZZ)V

    .line 2207
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2210
    if-eqz v0, :cond_0

    .line 2211
    invoke-direct {p0, v5}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 2215
    .end local v0           #changed:Z
    :cond_0
    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    monitor-enter v2

    .line 2216
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mStarted:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4100(Lcom/motorola/server/location/MotGpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2218
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v1

    const v3, 0xea60

    invoke-virtual {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 2220
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2222
    iput-boolean p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mCharging:Z

    .line 2224
    :cond_2
    return-void

    .line 2207
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2220
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public updateFixInterval()V
    .locals 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v0

    const v1, 0xea60

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "MovementMonitor stopping for long fix interval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2176
    :cond_0
    return-void
.end method

.method public updateHibernate()V
    .locals 2

    .prologue
    .line 2179
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "updateHibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "stopping for hibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    invoke-virtual {p0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->stop()V

    .line 2184
    :cond_0
    return-void
.end method

.method public updateNoFix()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2188
    iget v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    if-eq v0, v1, :cond_0

    .line 2189
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 2190
    iput v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I

    .line 2192
    :cond_0
    return-void
.end method

.method public updateSavings(ZZ)Z
    .locals 1
    .parameter "savingsOn"
    .parameter "broadcast"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4200(Lcom/motorola/server/location/MotGpsLocationProvider;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2229
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mSaving:Z
    invoke-static {v0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4202(Lcom/motorola/server/location/MotGpsLocationProvider;Z)Z

    .line 2230
    if-eqz p2, :cond_0

    .line 2231
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 2233
    :cond_0
    const/4 v0, 0x1

    .line 2235
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
