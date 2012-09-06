.class Lcom/motorola/server/ExternalStorageMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/ExternalStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/ExternalStorageMonitor;


# direct methods
.method constructor <init>(Lcom/motorola/server/ExternalStorageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/server/ExternalStorageMonitor$1;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    const-string v7, "ExternalStorageMonitor"

    const-string v8, "reload storage list on locale changed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor$1;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;
    invoke-static {v7}, Lcom/motorola/server/ExternalStorageMonitor;->access$000(Lcom/motorola/server/ExternalStorageMonitor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 92
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor$1;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/motorola/server/ExternalStorageMonitor;->access$100(Lcom/motorola/server/ExternalStorageMonitor;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 93
    .local v4, sm:Landroid/os/storage/StorageManager;
    if-nez v4, :cond_1

    .line 94
    const-string v7, "ExternalStorageMonitor"

    const-string v8, "Unable to access Storage Manager!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v4           #sm:Landroid/os/storage/StorageManager;
    :cond_0
    return-void

    .line 98
    .restart local v4       #sm:Landroid/os/storage/StorageManager;
    :cond_1
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 100
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    move-object v1, v6

    .local v1, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 102
    .local v5, sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/mnt/usbdisk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 104
    iget-object v7, p0, Lcom/motorola/server/ExternalStorageMonitor$1;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    #getter for: Lcom/motorola/server/ExternalStorageMonitor;->mStorages:Ljava/util/List;
    invoke-static {v7}, Lcom/motorola/server/ExternalStorageMonitor;->access$000(Lcom/motorola/server/ExternalStorageMonitor;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;

    iget-object v9, p0, Lcom/motorola/server/ExternalStorageMonitor$1;->this$0:Lcom/motorola/server/ExternalStorageMonitor;

    invoke-direct {v8, v9, v5}, Lcom/motorola/server/ExternalStorageMonitor$MonitorStorage;-><init>(Lcom/motorola/server/ExternalStorageMonitor;Landroid/os/storage/StorageVolume;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
