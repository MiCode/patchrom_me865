.class public Lcom/motorola/server/ExternalStorageMonitor;
.super Landroid/os/storage/StorageEventListener;
.source "ExternalStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTERNAL_STORAGE_THRESHOLD_PERCENTAGE:I = 0xc

.field private static final DEFAULT_STORAGE_MONITOR_INTERVAL:I = 0x5

.field private static final DEFAULT_STORAGE_THRESHOLD_PERCENTAGE:I = 0x3

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x1f400000

.field private static final TAG:Ljava/lang/String; = "ExternalStorageMonitor"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCountdown:I

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    .line 45
    const/4 v7, 0x5

    iput v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    .line 47
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 84
    new-instance v7, Lcom/motorola/server/ExternalStorageMonitor$1;

    invoke-direct {v7, p0}, Lcom/motorola/server/ExternalStorageMonitor$1;-><init>(Lcom/motorola/server/ExternalStorageMonitor;)V

    iput-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v7, Lcom/motorola/server/ExternalStorageMonitor$2;

    invoke-direct {v7, p0}, Lcom/motorola/server/ExternalStorageMonitor$2;-><init>(Lcom/motorola/server/ExternalStorageMonitor;)V

    iput-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 51
    iput-object p1, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    .line 53
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 56
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 57
    .local v4, sm:Landroid/os/storage/StorageManager;
    if-nez v4, :cond_0

    .line 58
    const-string v7, "ExternalStorageMonitor"

    const-string v8, "Unable to access Storage Manager!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 64
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 66
    .local v5, sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/mnt/usbdisk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 69
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    new-instance v8, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;

    invoke-direct {v8, p0, v5}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;-><init>(Lcom/motorola/server/ExternalStorageMonitor;Landroid/os/storage/StorageVolume;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v5           #sv:Landroid/os/storage/StorageVolume;
    :cond_2
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 76
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 79
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/motorola/server/ExternalStorageMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/server/ExternalStorageMonitor;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/server/ExternalStorageMonitor;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public check()V
    .locals 3

    .prologue
    .line 115
    iget v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    if-nez v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;

    .line 117
    .local v1, ms:Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    invoke-virtual {v1}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;->check()V

    goto :goto_0

    .line 119
    .end local v1           #ms:Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;
    :cond_0
    const/4 v2, 0x5

    iput v2, p0, Lcom/motorola/server/ExternalStorageMonitor;->mCountdown:I

    .line 121
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
