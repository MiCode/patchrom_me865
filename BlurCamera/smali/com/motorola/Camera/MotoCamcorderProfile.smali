.class Lcom/motorola/Camera/MotoCamcorderProfile;
.super Ljava/lang/Object;
.source "Camcorder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamcorderProfile"

.field private static sQualityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTimeLapseQualityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/16 v3, 0x3ef

    .line 5329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    .line 5330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    .line 5332
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5333
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    const/16 v2, 0x3f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5334
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "CIF"

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5335
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "NTSC_D1"

    const/16 v2, 0x3ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5336
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "720p"

    const/16 v2, 0x3ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5337
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "1080p"

    const/16 v2, 0x3ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5338
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "MMS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5339
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5341
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5342
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5343
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "CIF"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5344
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "NTSC_D1"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5345
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "720p"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5346
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "1080p"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5347
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "MMS"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5348
    sget-object v0, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5349
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 5327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 5421
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5422
    const-string v0, "mp4"

    .line 5424
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3gp"

    goto :goto_0
.end method

.method private getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 5353
    const/4 v0, 0x0

    .line 5354
    .local v0, cameraId:I
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 5355
    iget-object v2, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5356
    const/4 v0, 0x0

    .line 5361
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentTimeLapse()I

    move-result v2

    if-eqz v2, :cond_3

    .line 5362
    sget-object v2, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5363
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No such resolution supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5358
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5365
    :cond_1
    sget-object v2, Lcom/motorola/Camera/MotoCamcorderProfile;->sTimeLapseQualityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5366
    .local v1, quality:I
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5367
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    .line 5380
    :goto_1
    return-object v2

    :cond_2
    move-object v2, v3

    .line 5369
    goto :goto_1

    .line 5373
    .end local v1           #quality:I
    :cond_3
    sget-object v2, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 5374
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No such resolution supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5376
    :cond_4
    sget-object v2, Lcom/motorola/Camera/MotoCamcorderProfile;->sQualityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5377
    .restart local v1       #quality:I
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5378
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v3

    .line 5380
    goto :goto_1
.end method


# virtual methods
.method public getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5407
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioChannels(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5410
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioEncoder(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5398
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSamplingRate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5413
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFrameHeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5432
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFrameWidth(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5428
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 5387
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v0}, Lcom/motorola/Camera/MotoCamcorderProfile;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFormatInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5391
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 1
    .parameter "s"

    .prologue
    .line 5417
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method public getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5404
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoEncoder(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5395
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5401
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
