.class Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camera$PostViewPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

.field final synthetic val$rawData:[B


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera$PostViewPictureCallback;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5636
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iput-object p2, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->val$rawData:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v12, 0x60

    const/4 v7, 0x1

    const/4 v13, 0x0

    .line 5639
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v2, "PostView thread enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5642
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v13}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    .line 5644
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YUV Image Width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->pictureWidth:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11800(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->pictureHeight:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11900(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pixel format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->picturePixelFormat:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$12000(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    :cond_1
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->val$rawData:[B

    iget-object v2, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v2, v2, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->picturePixelFormat:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$12000(Lcom/motorola/Camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->pictureWidth:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11800(Lcom/motorola/Camera/Camera;)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v4, v4, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->pictureHeight:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$11900(Lcom/motorola/Camera/Camera;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 5648
    .local v0, NewImage:Landroid/graphics/YuvImage;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5649
    .local v10, jpegStream:Ljava/io/ByteArrayOutputStream;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCameraKPI"

    const-string v2, "PostView thread read rawData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5651
    :cond_2
    if-eqz v0, :cond_e

    .line 5653
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v7}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    .line 5654
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v2, v2, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->pictureWidth:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$11800(Lcom/motorola/Camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v3, v3, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->pictureHeight:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11900(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-direct {v1, v13, v13, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 5655
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v2, "PostView thread compressed to jpeg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    :cond_3
    if-eqz v10, :cond_d

    .line 5658
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5659
    .local v9, inpStream:Ljava/io/ByteArrayInputStream;
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3102(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5660
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCameraKPI"

    const-string v2, "PostView thread created bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5661
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5662
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 5664
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v2, v2, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v12, v12}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4902(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5665
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCameraKPI"

    const-string v2, "PostView thread create thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    :cond_6
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget v1, v1, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    int-to-float v11, v1

    .line 5669
    .local v11, orientation:F
    const/high16 v1, 0x42b4

    div-float/2addr v11, v1

    .line 5670
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 5671
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPictureTaken : Orientation - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    :cond_7
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    .line 5675
    const/4 v8, 0x0

    .line 5676
    .local v8, degrees:I
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5680
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5681
    const/16 v8, 0xb4

    .line 5688
    :cond_8
    :goto_0
    if-lez v8, :cond_9

    .line 5689
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 5690
    .local v6, m:Landroid/graphics/Matrix;
    int-to-float v1, v8

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 5691
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v12, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v2, v2, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v2, v2, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v2, v13

    move v3, v13

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v12, v1}, Lcom/motorola/Camera/Camera;->access$3102(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5696
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoCameraKPI"

    const-string v2, "PostView thread bitmap rotated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v8           #degrees:I
    :cond_9
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5701
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v2, v2, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v2, v2, Lcom/motorola/Camera/Camera;->mUpdatePicInSvcMode:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5709
    .end local v9           #inpStream:Ljava/io/ByteArrayInputStream;
    .end local v11           #orientation:F
    :cond_a
    :goto_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "MotoCameraKPI"

    const-string v2, "PostView thread exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5711
    :cond_b
    return-void

    .line 5684
    .restart local v8       #degrees:I
    .restart local v9       #inpStream:Ljava/io/ByteArrayInputStream;
    .restart local v11       #orientation:F
    :cond_c
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5685
    const/16 v8, 0xb4

    goto :goto_0

    .line 5704
    .end local v8           #degrees:I
    .end local v9           #inpStream:Ljava/io/ByteArrayInputStream;
    .end local v11           #orientation:F
    :cond_d
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v13}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    goto :goto_1

    .line 5707
    :cond_e
    iget-object v1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v13}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    goto :goto_1
.end method
