.class public Lcom/android/providers/media/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MtpService$MyTimerTask;
    }
.end annotation


# static fields
.field private static final PTP_DIRECTORIES:[Ljava/lang/String; = null

.field private static REASON_OBJADDED_EVENT:I = 0x0

.field private static REASON_OBJREMOVED_EVENT:I = 0x0

.field private static REASON_ONSTART_EVENT:I = 0x0

.field private static REASON_STORAGE_EVENT:I = 0x0

.field private static REASON_USER_PRESENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtpService"


# instance fields
.field private final mBinder:Lcom/android/providers/media/IMtpService$Stub;

.field private mDatabase:Landroid/mtp/MtpDatabase;

.field private mMtpDisabled:Z

.field private mPtpMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    .line 168
    sput v3, Lcom/android/providers/media/MtpService;->REASON_USER_PRESENT:I

    .line 169
    sput v4, Lcom/android/providers/media/MtpService;->REASON_STORAGE_EVENT:I

    .line 170
    const/4 v0, 0x3

    sput v0, Lcom/android/providers/media/MtpService;->REASON_ONSTART_EVENT:I

    .line 173
    const/4 v0, 0x4

    sput v0, Lcom/android/providers/media/MtpService;->REASON_OBJADDED_EVENT:I

    .line 174
    const/4 v0, 0x5

    sput v0, Lcom/android/providers/media/MtpService;->REASON_OBJREMOVED_EVENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;

    .line 176
    new-instance v0, Lcom/android/providers/media/MtpService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$1;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v0, Lcom/android/providers/media/MtpService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$2;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    .line 283
    new-instance v0, Lcom/android/providers/media/MtpService$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$3;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/providers/media/MtpService;->REASON_USER_PRESENT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/providers/media/MtpService;->REASON_OBJADDED_EVENT:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/providers/media/MtpService;->REASON_OBJREMOVED_EVENT:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/providers/media/MtpService;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->copyMtpIconLogo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/providers/media/MtpService;->REASON_STORAGE_EVENT:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/providers/media/MtpService;->REASON_ONSTART_EVENT:I

    return v0
.end method

.method private addStorageDevicesLocked()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorage;

    .line 66
    .local v1, storage:Landroid/mtp/MtpStorage;
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    goto :goto_0

    .line 80
    .end local v1           #storage:Landroid/mtp/MtpStorage;
    :cond_0
    return-void
.end method

.method private addStorageLocked(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 344
    const-string v0, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStorageLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpDatabase;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 351
    :cond_1
    return-void
.end method

.method private copyMtpIconLogo(Ljava/lang/String;)V
    .locals 5
    .parameter "storagePath"

    .prologue
    .line 365
    const v0, 0x7f030001

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DevLogo.fil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MtpService;->loadRawResource(ILjava/lang/String;)I

    .line 366
    const/high16 v0, 0x7f03

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DevIcon.fil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MtpService;->loadRawResource(ILjava/lang/String;)I

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DevLogo.fil"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MtpService;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DevIcon.fil"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MtpService;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    return-void
.end method

.method private loadRawResource(ILjava/lang/String;)I
    .locals 10
    .parameter "id"
    .parameter "fileName"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/providers/media/MtpService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 376
    .local v6, r:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 377
    .local v4, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 378
    .local v5, len:I
    const/4 v0, 0x0

    .line 380
    .local v0, buffer:[B
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 381
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 382
    new-array v0, v5, [B

    .line 383
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    if-eqz v4, :cond_1

    .line 390
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 396
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 397
    const/4 v7, 0x0

    .line 415
    :goto_1
    return v7

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "MtpService"

    const-string v8, "Failed to open device icon file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    if-eqz v4, :cond_1

    .line 390
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 391
    :catch_1
    move-exception v7

    goto :goto_0

    .line 388
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_2

    .line 390
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 392
    :cond_2
    :goto_2
    throw v7

    .line 399
    :cond_3
    const/4 v2, 0x0

    .line 401
    .local v2, fs:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 402
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .local v3, fs:Ljava/io/FileOutputStream;
    if-eqz v3, :cond_4

    .line 403
    :try_start_6
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 408
    :cond_4
    if-eqz v3, :cond_7

    .line 410
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v2, v3

    .line 415
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    :cond_5
    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    .line 411
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v2, v3

    .line 412
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 405
    :catch_3
    move-exception v1

    .line 406
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_8
    const-string v7, "MtpService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 408
    if-eqz v2, :cond_5

    .line 410
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 411
    :catch_4
    move-exception v7

    goto :goto_3

    .line 408
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    :goto_5
    if-eqz v2, :cond_6

    .line 410
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 412
    :cond_6
    :goto_6
    throw v7

    .line 391
    .end local v2           #fs:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    goto :goto_0

    :catch_6
    move-exception v8

    goto :goto_2

    .line 411
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v8

    goto :goto_6

    .line 408
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 405
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :cond_7
    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private removeStorageLocked(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 354
    const-string v0, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStorageLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpDatabase;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 361
    :cond_1
    return-void
.end method

.method private volumeMountedLocked(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 318
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v6, v0

    .line 319
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    invoke-static {v0}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v4

    .line 321
    .local v4, storageId:I
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    mul-int/lit16 v6, v6, 0x400

    int-to-long v1, v6

    .line 323
    .local v1, reserveSpace:J
    new-instance v3, Landroid/mtp/MtpStorage;

    invoke-direct {v3, v5}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;)V

    .line 324
    .local v3, storage:Landroid/mtp/MtpStorage;
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v6, :cond_0

    .line 328
    invoke-direct {p0, v3}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    .line 341
    .end local v1           #reserveSpace:J
    .end local v3           #storage:Landroid/mtp/MtpStorage;
    .end local v4           #storageId:I
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    return-void

    .line 317
    .restart local v5       #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 207
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 209
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    .line 210
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/media/MtpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 213
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v6

    .line 214
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 215
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 216
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    iput-object v4, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 218
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-direct {p0, v2}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0           #i:I
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 224
    .restart local v0       #i:I
    .restart local v4       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;

    .line 228
    return-void

    .line 224
    .end local v0           #i:I
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MtpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 279
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 281
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v7

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-nez v1, :cond_2

    .line 234
    if-nez p1, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    .line 236
    const-string v1, "MtpService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting MTP server in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v0, :cond_4

    const-string v0, "PTP mode"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v6, 0x0

    .line 238
    .local v6, subdirs:[Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v0, :cond_0

    .line 254
    sget-object v6, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    .line 257
    :cond_0
    new-instance v0, Landroid/mtp/MtpDatabase;

    const-string v1, "external"

    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v6}, Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 259
    new-instance v0, Landroid/mtp/MtpServer;

    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Z)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    .line 260
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    .line 263
    iget-object v8, p0, Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/providers/media/MtpService$MyTimerTask;

    sget v2, Lcom/android/providers/media/MtpService;->REASON_ONSTART_EVENT:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MtpService$MyTimerTask;-><init>(Lcom/android/providers/media/MtpService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v8, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v0}, Landroid/mtp/MtpServer;->start()V

    .line 268
    .end local v6           #subdirs:[Ljava/lang/String;
    :cond_2
    monitor-exit v7

    .line 270
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_3
    const-string v0, "ptp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 236
    :cond_4
    const-string v0, "MTP mode"

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
