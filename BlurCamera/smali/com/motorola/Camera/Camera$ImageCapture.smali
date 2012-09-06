.class Lcom/motorola/Camera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/Camera/Camera$Capturer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field private mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

.field private mCancel:Z

.field mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

.field private mCapturing:Z

.field private mLastContentUri:Landroid/net/Uri;

.field private mNewFileName:Ljava/lang/String;

.field private mThreadTimeEnd:J

.field private mThreadTimeStart:J

.field private mWallTimeEnd:J

.field private mWallTimeStart:J

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3993
    iput-object p1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3977
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCancel:Z

    .line 3978
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCapturing:Z

    .line 3994
    return-void
.end method

.method static synthetic access$10500(Lcom/motorola/Camera/Camera$ImageCapture;[BLandroid/location/Location;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3975
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/Camera$ImageCapture;->storeImage([BLandroid/location/Location;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private capture(Z)V
    .locals 12
    .parameter "captureOnly"

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    .line 4257
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "capture() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4260
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "ERROR camera isn\'t opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    :cond_1
    :goto_0
    return-void

    .line 4264
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7000(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4266
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4267
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$7002(Lcom/motorola/Camera/Camera;Z)Z

    .line 4268
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 4271
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8200(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4273
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4275
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 4276
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 4277
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$8202(Lcom/motorola/Camera/Camera;Z)Z

    .line 4280
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 4281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 4284
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget v8, v0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    .line 4289
    .local v8, orientation:I
    invoke-static {v8}, Lcom/motorola/Camera/ImageManager;->roundOrientation(I)I

    move-result v8

    .line 4292
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    if-eqz v0, :cond_5

    .line 4294
    add-int/lit8 v8, v8, 0x5a

    .line 4301
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4302
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$3902(Lcom/motorola/Camera/Camera;I)I

    .line 4304
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->setGroupIdentifier()Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$9000(Lcom/motorola/Camera/Camera;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 4308
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I
    invoke-static {v0, v8}, Lcom/motorola/Camera/Camera;->access$9102(Lcom/motorola/Camera/Camera;I)I

    .line 4313
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$9100(Lcom/motorola/Camera/Camera;)I

    move-result v1

    invoke-static {v1}, Lcom/motorola/Camera/ImageManager;->convertRotationExifGoogle(I)I

    move-result v1

    #setter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$9202(Lcom/motorola/Camera/Camera;I)I

    .line 4315
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 4316
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCapture() - mMultiShotOrientation rounded CW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$9100(Lcom/motorola/Camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCapture() - mMultiShotOrientationCCW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$9200(Lcom/motorola/Camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    const-string v0, "MotoCameraKPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture Multishot called at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v2, v2, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCaptureCluster()V

    .line 4337
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4338
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v0

    add-int/2addr v0, v8

    rem-int/lit16 v8, v0, 0x168

    .line 4342
    :goto_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget v2, v2, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roundOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCamSetting.getImageOrientation() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$6200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/motorola/Camera/CameraUtility;->setPictureRotation(Landroid/hardware/Camera$Parameters;I)V

    .line 4350
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 4353
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 4354
    .local v9, recordLocation:Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 4358
    .local v7, loc:Landroid/location/Location;
    :goto_3
    if-eqz v7, :cond_8

    .line 4360
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 4361
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 4362
    invoke-virtual {v7}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4363
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 4373
    :goto_4
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 4374
    .local v10, utcTimeSeconds:J
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 4378
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "gps-processing-method"

    const-string v2, "Unknown"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "mot-gps-map-datum"

    const-string v2, "Unknown"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4383
    .end local v10           #utcTimeSeconds:J
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4387
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4388
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$9302(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    .line 4393
    :goto_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4395
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/View/CameraView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CameraView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setScreenSize(II)V

    .line 4398
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    if-nez v0, :cond_9

    .line 4399
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4402
    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 4406
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$9900(Lcom/motorola/Camera/Camera;)Lcom/motorola/android/camera/Panorama;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShutterCallback:Lcom/motorola/Camera/Camera$PanoramaShutterCallback;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$9500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

    move-result-object v1

    new-instance v2, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;

    iget-object v3, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {v2, v3, v7}, Lcom/motorola/Camera/Camera$PanoramaPictureCallback;-><init>(Lcom/motorola/Camera/Camera;Landroid/location/Location;)V

    iget-object v3, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaPostviewCallback:Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$9600(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$9700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaDirectionInfoCallback:Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$9800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/camera/Panorama;->takePicture(Lcom/motorola/android/camera/Panorama$ShutterCallback;Lcom/motorola/android/camera/Panorama$PictureCallback;Lcom/motorola/android/camera/Panorama$PostviewCallback;Lcom/motorola/android/camera/Panorama$ViewfinderInfoWithDirCallback;Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;)V

    .line 4408
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4410
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideLocationTags(ZZ)V

    .line 4411
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideResolutionTextIcon(ZZ)V

    .line 4412
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4472
    :goto_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 4474
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$10200(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4475
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$10202(Lcom/motorola/Camera/Camera;Z)Z

    goto/16 :goto_0

    .line 4328
    .end local v7           #loc:Landroid/location/Location;
    .end local v9           #recordLocation:Ljava/lang/Boolean;
    :cond_a
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 4330
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, -0x1

    #setter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$9102(Lcom/motorola/Camera/Camera;I)I

    .line 4331
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$9202(Lcom/motorola/Camera/Camera;I)I

    .line 4332
    const-string v0, "MotoCamera"

    const-string v1, "KPI: OnSnap setting mMultishotGroupId to null. Not in Multishot mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4340
    :cond_b
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v0

    sub-int/2addr v0, v8

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v8, v0, 0x168

    goto/16 :goto_2

    .line 4354
    .restart local v9       #recordLocation:Ljava/lang/Boolean;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 4368
    .restart local v7       #loc:Landroid/location/Location;
    :cond_d
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_4

    .line 4390
    :cond_e
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v1, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    #setter for: Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$9302(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    goto/16 :goto_5

    .line 4415
    :catch_0
    move-exception v6

    .line 4416
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "MotoCamera"

    const-string v1, "Panorama - take picture failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4419
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 4422
    .end local v6           #e:Ljava/lang/Exception;
    :cond_f
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4427
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-static {}, Lcom/motorola/Camera/Camera;->access$10000()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4434
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$9300(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;

    iget-object v4, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {v3, v4, v7}, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;-><init>(Lcom/motorola/Camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 4436
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4437
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideLocationTags(ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 4440
    :catch_1
    move-exception v6

    .line 4441
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "MotoCamera"

    const-string v1, "Burst Capture : take picture failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4444
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 4450
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_10
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4453
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flash value before taking picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    :try_start_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$9300(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/motorola/Camera/Camera$PostViewPictureCallback;

    iget-object v4, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/Camera$PostViewPictureCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    new-instance v4, Lcom/motorola/Camera/Camera$JpegPictureCallback;

    iget-object v5, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {v4, v5, v7}, Lcom/motorola/Camera/Camera$JpegPictureCallback;-><init>(Lcom/motorola/Camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 4458
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    .line 4459
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7c

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4462
    :cond_11
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 4463
    :catch_2
    move-exception v6

    .line 4464
    .restart local v6       #e:Ljava/lang/RuntimeException;
    const-string v0, "MotoCamera"

    const-string v1, "take picture failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4467
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6
.end method

.method private startTiming()V
    .locals 2

    .prologue
    .line 4039
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mWallTimeStart:J

    .line 4040
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mThreadTimeStart:J

    .line 4041
    return-void
.end method

.method private stopTiming()V
    .locals 2

    .prologue
    .line 4044
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mThreadTimeEnd:J

    .line 4045
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mWallTimeEnd:J

    .line 4046
    return-void
.end method

.method private storeImage([BLandroid/location/Location;)Ljava/lang/Integer;
    .locals 22
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 4050
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v2, "storeImage2 enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 4053
    .local v17, mediaID:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4054
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "CamSetting not initial, can\'t storeImage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v18, v17

    .line 4172
    .end local v17           #mediaID:Ljava/lang/Integer;
    .local v18, mediaID:Ljava/lang/Integer;
    :goto_0
    return-object v18

    .line 4058
    .end local v18           #mediaID:Ljava/lang/Integer;
    .restart local v17       #mediaID:Ljava/lang/Integer;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v1, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4059
    :try_start_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 4060
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera$ImageCapture;->startTiming()V

    .line 4062
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4063
    .local v5, dateTaken:J
    invoke-static {v5, v6}, Lcom/motorola/Camera/CameraGlobalTools;->createName(J)Ljava/lang/String;

    move-result-object v4

    .line 4064
    .local v4, title:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    .line 4065
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 4066
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCapture:storeImage:newFileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget v8, v1, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    .line 4070
    .local v8, orientation:I
    invoke-static {v8}, Lcom/motorola/Camera/ImageManager;->roundOrientation(I)I

    move-result v8

    .line 4071
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 4072
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImageCapture:storeImage - orientation is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v1, v1, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    if-eqz v1, :cond_6

    .line 4077
    add-int/lit8 v8, v8, 0x5a

    .line 4080
    :cond_6
    const/16 v1, 0x10e

    if-ne v8, v1, :cond_11

    .line 4081
    const/4 v8, 0x0

    .line 4084
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v19

    .line 4086
    .local v19, storageDirectory:Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 4087
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCapture:storeImage:storageDirectory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCameraKPI"

    const-string v2, "storeImage2 orientation done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :cond_8
    invoke-static {}, Lcom/motorola/Camera/ImageManager;->instance()Lcom/motorola/Camera/ImageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/dcim/Camera"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v10}, Lcom/motorola/Camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    .line 4101
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoCameraKPI"

    const-string v2, "storeImage2 added to db"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    if-nez v1, :cond_a

    .line 4104
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mCancel:Z

    .line 4106
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mCancel:Z

    if-nez v1, :cond_e

    .line 4110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 4112
    invoke-static {}, Lcom/motorola/Camera/ImageManager;->instance()Lcom/motorola/Camera/ImageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/motorola/Camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/ContentResolver;[BLandroid/graphics/Bitmap;)Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

    .line 4115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

    invoke-interface {v1}, Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;->get()V

    .line 4116
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

    .line 4117
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "MotoCameraKPI"

    const-string v2, "storeImage2 storeImage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4122
    .local v15, c:Landroid/database/Cursor;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_c

    const-string v1, "MotoCameraKPI"

    const-string v2, "storeImage2 query"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    :cond_c
    if-eqz v15, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4125
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 4129
    :cond_d
    if-eqz v15, :cond_e

    .line 4130
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4134
    .end local v15           #c:Landroid/database/Cursor;
    :cond_e
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_f

    .line 4135
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera$ImageCapture;->stopTiming()V

    .line 4136
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_f

    .line 4137
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCapture:storeImage:Storing image took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mWallTimeEnd:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mWallTimeStart:J

    sub-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Thread time was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mThreadTimeEnd:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mThreadTimeStart:J

    sub-long/2addr v9, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    :cond_f
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4152
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #dateTaken:J
    .end local v8           #orientation:I
    .end local v19           #storageDirectory:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    if-nez v1, :cond_12

    .line 4153
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_10

    const-string v1, "MotoCamera"

    const-string v2, "CamSetting not initial, can\'t storeImage 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v18, v17

    .line 4154
    .end local v17           #mediaID:Ljava/lang/Integer;
    .restart local v18       #mediaID:Ljava/lang/Integer;
    goto/16 :goto_0

    .line 4083
    .end local v18           #mediaID:Ljava/lang/Integer;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v5       #dateTaken:J
    .restart local v8       #orientation:I
    .restart local v17       #mediaID:Ljava/lang/Integer;
    :cond_11
    add-int/lit8 v8, v8, 0x5a

    goto/16 :goto_1

    .line 4147
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #dateTaken:J
    .end local v8           #orientation:I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4148
    :catch_0
    move-exception v16

    .line 4149
    .local v16, ex:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v2, "ImageCapture:storeImage:Exception while compressing image."

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4157
    .end local v16           #ex:Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v19

    .line 4158
    .restart local v19       #storageDirectory:Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_13

    .line 4159
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCapture:storeImage:storageDirectory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    :cond_13
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dcim/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    .line 4165
    .local v20, uri:Landroid/net/Uri;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_14

    .line 4166
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCapture:storeImage: send pic file broadcast ACTION_MEDIA_SCANNER_SCAN_FILE with uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v20

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 4169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_PICTURE"

    move-object/from16 v0, v20

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 4171
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_15

    const-string v1, "MotoCameraKPI"

    const-string v2, "storeImage2 exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v18, v17

    .line 4172
    .end local v17           #mediaID:Ljava/lang/Integer;
    .restart local v18       #mediaID:Ljava/lang/Integer;
    goto/16 :goto_0
.end method


# virtual methods
.method public cancelAutoDismiss()V
    .locals 0

    .prologue
    .line 4024
    return-void
.end method

.method public cancelSave()V
    .locals 1

    .prologue
    .line 4216
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCapturing:Z

    if-nez v0, :cond_0

    .line 4227
    :goto_0
    return-void

    .line 4220
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCancel:Z

    .line 4222
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

    if-eqz v0, :cond_1

    .line 4223
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;

    invoke-interface {v0}, Lcom/motorola/Camera/ImageManager$IAddImage_cancelable;->cancel()Z

    .line 4226
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera$ImageCapture;->dismissFreezeFrame()V

    goto :goto_0
.end method

.method public clearLastData()V
    .locals 1

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4000
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 4003
    :cond_0
    return-void
.end method

.method public dismissFreezeFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 4027
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4030
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4036
    :goto_0
    return-void

    .line 4032
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->startDevice()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$6100(Lcom/motorola/Camera/Camera;)V

    .line 4033
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 4034
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateRemainCount()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2700(Lcom/motorola/Camera/Camera;)V

    goto :goto_0
.end method

.method public getLastBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 4251
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLastCaptureUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initiate(Z)V
    .locals 2
    .parameter "captureOnly"

    .prologue
    .line 4234
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4236
    const-string v0, "MotoCamera"

    const-string v1, "initiate() - tried to capture when camera device is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    :goto_0
    return-void

    .line 4240
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCancel:Z

    .line 4241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCapturing:Z

    .line 4243
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$ImageCapture;->capture(Z)V

    goto :goto_0
.end method

.method public onSnap()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4496
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mPostView:Z
    invoke-static {v0, v3}, Lcom/motorola/Camera/Camera;->access$10302(Lcom/motorola/Camera/Camera;Z)Z

    .line 4497
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v0, v3}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    .line 4499
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v0, :cond_2

    .line 4502
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "onSnap() - Tried to take picture in wrong state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    :cond_1
    :goto_0
    return-void

    .line 4509
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget v0, v0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget v0, v0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    invoke-static {}, Lcom/motorola/Camera/Camera;->access$10000()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 4512
    :cond_3
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 4513
    const-string v0, "MotoCamera"

    const-string v1, "onSnap() - SD Card Full"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->showStorageToast()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$10400(Lcom/motorola/Camera/Camera;)V

    goto :goto_0

    .line 4520
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v0, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 4522
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4523
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 4524
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 4528
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    .line 4529
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "KPI: onSnap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v0

    if-ne v0, v4, :cond_8

    .line 4534
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->startShutterAnim()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4400(Lcom/motorola/Camera/Camera;)V

    .line 4538
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4540
    :cond_a
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideRightSet()V

    .line 4541
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    .line 4542
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideToolBar(Z)V

    .line 4543
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 4546
    :cond_b
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    .line 4547
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4549
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/Camera$ImageCapture;->initiate(Z)V

    goto/16 :goto_0

    .line 4553
    :cond_c
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera$ImageCapture;->initiate(Z)V

    goto/16 :goto_0
.end method

.method public setCapturingLocked(Z)V
    .locals 0
    .parameter "capturing"

    .prologue
    .line 4010
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCapturing:Z

    .line 4011
    return-void
.end method

.method public setDone(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 4017
    return-void
.end method

.method public storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V
    .locals 9
    .parameter "data"
    .parameter "camera"
    .parameter "loc"

    .prologue
    .line 4178
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "storeImage enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    :cond_0
    iget-object v7, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/motorola/Camera/Camera$storageRunnable;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v5, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mNewFileName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/Camera/Camera$storageRunnable;-><init>(Lcom/motorola/Camera/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;
    invoke-static {v7, v8}, Lcom/motorola/Camera/Camera;->access$8602(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4180
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8600(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4181
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4183
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8600(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4189
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 4190
    invoke-direct {p0}, Lcom/motorola/Camera/Camera$ImageCapture;->startTiming()V

    .line 4193
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 4195
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/Camera/Camera$ImageCapture$1;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camera$ImageCapture$1;-><init>(Lcom/motorola/Camera/Camera$ImageCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera$ImageCapture;->mCapturing:Z

    .line 4208
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "storeImage exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    :cond_3
    return-void

    .line 4184
    :catch_0
    move-exception v6

    .line 4185
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
