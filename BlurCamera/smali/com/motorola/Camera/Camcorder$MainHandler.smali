.class Lcom/motorola/Camera/Camcorder$MainHandler;
.super Landroid/os/Handler;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mActivityReference:Landroid/app/Activity;

.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder$MainHandler;-><init>(Lcom/motorola/Camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    .line 271
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling Message - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-boolean v2, v2, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-eqz v2, :cond_2

    .line 815
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 810
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 811
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainHandler:handleMessage:Unhandled message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v3, v3, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 282
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamcorder"

    const-string v3, "Handling Message VIDEO_IN_CAPTURE Don\'t UPDATE_THUMBNAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :sswitch_1
    new-instance v26, Lcom/motorola/Camera/Camcorder$MainHandler$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/Camcorder$MainHandler$1;-><init>(Lcom/motorola/Camera/Camcorder$MainHandler;)V

    .line 295
    .local v26, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    const/16 v18, 0x0

    .line 296
    .local v18, cancel:Z
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {v15, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v15, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b009b

    invoke-virtual {v15, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 298
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 299
    const v2, 0x104000a

    move-object/from16 v0, v26

    invoke-virtual {v15, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 304
    .end local v15           #alert:Landroid/app/AlertDialog$Builder;
    .end local v18           #cancel:Z
    .end local v26           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateScenesEffects()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$800(Lcom/motorola/Camera/Camcorder;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->initializeRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$900(Lcom/motorola/Camera/Camcorder;)V

    .line 313
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 317
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 318
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 319
    const-string v2, "MotoCamcorder"

    const-string v3, "media recorder released!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->closeCamera()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)V

    .line 324
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    .line 325
    const-string v2, "MotoCamcorder"

    const-string v3, "preview stopped!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->startPreview()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1000(Lcom/motorola/Camera/Camcorder;)V

    .line 328
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    .line 329
    const-string v2, "MotoCamcorder"

    const-string v3, "preview started!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->initializeRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$900(Lcom/motorola/Camera/Camcorder;)V

    .line 332
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    .line 333
    const-string v2, "MotoCamcorder"

    const-string v3, "recorder initialized!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 340
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1202(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->updateEffects()V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 353
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->updateWhiteBalances()V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 365
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b016f

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b015a

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 381
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/motorola/Camera/Camcorder$MainHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/motorola/Camera/Camcorder$MainHandler$2;-><init>(Lcom/motorola/Camera/Camcorder$MainHandler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, v2, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 392
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 394
    .local v24, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1400(Lcom/motorola/Camera/Camcorder;)J

    move-result-wide v2

    sub-long v21, v24, v2

    .line 395
    .local v21, delta:J
    const-wide/16 v2, 0x3e8

    div-long v27, v21, v2

    .line 398
    .local v27, seconds:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v19

    .line 400
    .local v19, currentVideoMode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRecordTime()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1600(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 405
    .end local v19           #currentVideoMode:I
    .end local v21           #delta:J
    .end local v24           #now:J
    .end local v27           #seconds:J
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #calls: Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1700(Lcom/motorola/Camera/Camcorder;Z)V

    goto/16 :goto_0

    .line 409
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->toggleCamera()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1800(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 413
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->camcordermuteonoff(Z)V

    goto/16 :goto_0

    .line 416
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->camcordermuteonoff(Z)V

    goto/16 :goto_0

    .line 419
    :sswitch_10
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_8

    const-string v2, "MotoCamcorder"

    const-string v3, "handleMessage() : VideoSnapshot message received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->videoSnapshot()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1900(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 423
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->launchGallery(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 426
    const-string v2, "MotoCamcorder"

    const-string v3, "launchGallery() - couldn\'t launch gallery, activity doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b006e

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b006f

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    goto/16 :goto_0

    .line 440
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideStatusSet(Z)V

    goto/16 :goto_0

    .line 445
    :sswitch_15
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_9

    const-string v2, "MotoCamcorder"

    const-string v3, "SHOW_TOAST_AND_EXIT_CAMERA occurs!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0098

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 450
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0099

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :sswitch_17
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_a

    const-string v2, "MotoCamcorder"

    const-string v3, "EXIT_CAMERA occurs!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_a
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 459
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->dismissToast()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2100(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 462
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateLocationText()V

    goto/16 :goto_0

    .line 465
    :sswitch_1a
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_b

    .line 466
    const-string v2, "MotoCamcorder"

    const-string v3, "MainHandler:handleMessage: CameraGlobalType.DISPLAY_VIDEO_POSTVIEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->acquireAndShowVideoFrame()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2200(Lcom/motorola/Camera/Camcorder;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 476
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    .line 477
    .local v16, broadUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    .end local v16           #broadUri:Landroid/net/Uri;
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2400(Lcom/motorola/Camera/Camcorder;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCaptureCluster()V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, v2, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, v2, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x6

    #setter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$202(Lcom/motorola/Camera/Camcorder;I)I

    goto/16 :goto_0

    .line 482
    :cond_e
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_c

    .line 483
    const-string v2, "MotoCamcorder"

    const-string v3, "onPause: video path is null, will not send the URI to scanner "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 497
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->showPostRecordingAlert()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2500(Lcom/motorola/Camera/Camcorder;)V

    goto :goto_2

    .line 503
    :sswitch_1b
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_10

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mZoomAdjusting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$2600(Lcom/motorola/Camera/Camcorder;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_11

    const-string v2, "MotoCamcorder"

    const-string v3, "Zoom IN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v20

    .line 508
    .local v20, currentZoom:I
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_12

    .line 509
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 515
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_13

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$2602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 517
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v2, :cond_14

    .line 518
    add-int/lit8 v20, v20, 0x1

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v20

    #calls: Lcom/motorola/Camera/Camcorder;->zoomTo(I)V
    invoke-static {v2, v0}, Lcom/motorola/Camera/Camcorder;->access$2700(Lcom/motorola/Camera/Camcorder;I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 529
    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->updateAudioZoom()V

    goto/16 :goto_0

    .line 524
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x40

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    add-int v4, v4, v20

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 525
    .local v31, zoomMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 533
    .end local v20           #currentZoom:I
    .end local v31           #zoomMsg:Landroid/os/Message;
    :sswitch_1c
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_15

    const-string v2, "MotoCamcorder"

    const-string v3, "Zoom OUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v30

    .line 535
    .local v30, zoom:I
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_16

    .line 536
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v2, "MotoCamcorder"

    const-string v3, "MIN ZOOM:0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 541
    if-lez v30, :cond_17

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$2602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 543
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v2, :cond_18

    .line 544
    add-int/lit8 v30, v30, -0x1

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v30

    #calls: Lcom/motorola/Camera/Camcorder;->zoomTo(I)V
    invoke-static {v2, v0}, Lcom/motorola/Camera/Camcorder;->access$2700(Lcom/motorola/Camera/Camcorder;I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 556
    :cond_17
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->updateAudioZoom()V

    goto/16 :goto_0

    .line 551
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x40

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    sub-int v4, v30, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 552
    .restart local v31       #zoomMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 559
    .end local v30           #zoom:I
    .end local v31           #zoomMsg:Landroid/os/Message;
    :sswitch_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 561
    .local v32, zoomToValue:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v32

    #calls: Lcom/motorola/Camera/Camcorder;->zoomTo(I)V
    invoke-static {v2, v0}, Lcom/motorola/Camera/Camcorder;->access$2700(Lcom/motorola/Camera/Camcorder;I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-nez v2, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$2602(Lcom/motorola/Camera/Camcorder;Z)Z

    goto/16 :goto_0

    .line 573
    .end local v32           #zoomToValue:I
    :sswitch_1e
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_19

    .line 574
    const-string v2, "MotoCamcorder"

    const-string v3, "Entering STOP_SMOOTH_ZOOM message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopSmoothZoom()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2800(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 580
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 581
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 582
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 584
    .local v12, EI:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1202(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 594
    .end local v12           #EI:I
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 595
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 596
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 597
    .local v11, CV:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1202(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "contrast"

    invoke-virtual {v2, v3, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentContrastValue(Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 607
    .end local v11           #CV:I
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 608
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 609
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 610
    .local v13, SV:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1202(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "saturation"

    invoke-virtual {v2, v3, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentSaturationValue(Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 620
    .end local v13           #SV:I
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1202(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "iso"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentISOValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_0

    .line 629
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2900(Lcom/motorola/Camera/Camcorder;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0094

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    goto/16 :goto_0

    .line 638
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->startVideoRecording()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3000(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 642
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    goto/16 :goto_0

    .line 647
    :sswitch_24
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1c

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:handleMessage:RECORD_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3100(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 653
    :sswitch_25
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1d

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:handleMessage:INACTIVITY_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1f

    .line 657
    :cond_1e
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 661
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 664
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camcorder;->launchCamera()V

    goto/16 :goto_0

    .line 667
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCamcorderMode(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 673
    :sswitch_28
    const-string v2, "MotoCamcorder"

    const-string v3, "Slow Motion mode pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableSlowMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3200(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 677
    :sswitch_29
    const-string v2, "MotoCamcorder"

    const-string v3, "Fast Motion mode pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableFastMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3300(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 681
    :sswitch_2a
    const-string v2, "MotoCamcorder"

    const-string v3, "MMS mode pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableMMSMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3400(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 685
    :sswitch_2b
    const-string v2, "MotoCamcorder"

    const-string v3, "Normal Video pressed in video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableNormalVideoMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3500(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 689
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCamcorderMode(I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 695
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCamcorderMode(I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->launchCameraInMode(I)V

    goto/16 :goto_0

    .line 703
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->setCameraParameters()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3600(Lcom/motorola/Camera/Camcorder;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 714
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 718
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0069

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v3, 0x7f0d00be

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 722
    .local v23, i:Landroid/widget/ImageView;
    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 725
    .end local v23           #i:Landroid/widget/ImageView;
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 726
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_21

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$3702(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$3802(Lcom/motorola/Camera/Camcorder;I)I

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentTimeLapse(I)V

    .line 731
    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 736
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableNormalVideoMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3500(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 733
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableMMSMode()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3400(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 739
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableFastMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3300(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 742
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableSlowMotion()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3200(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 745
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->enableWdr()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3900(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 748
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$4002(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/GridView;

    .line 750
    .local v29, timelapseGrid:Landroid/widget/GridView;
    new-instance v14, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {v14, v2, v3}, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/content/Context;)V

    .line 751
    .local v14, adapter:Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;
    if-nez v29, :cond_22

    .line 753
    const-string v2, "MotoCamcorder"

    const-string v3, "timelapseGrid is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 756
    :cond_22
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 757
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$4100(Lcom/motorola/Camera/Camcorder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->getBtnCenter()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->createSecondaryDialog(Landroid/widget/RelativeLayout;I)V

    goto/16 :goto_0

    .line 766
    .end local v14           #adapter:Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;
    .end local v29           #timelapseGrid:Landroid/widget/GridView;
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateTorch()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4200(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 770
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0149

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 774
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b014a

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 777
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b014b

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :sswitch_36
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 781
    .local v17, buffer:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4300(Lcom/motorola/Camera/Camcorder;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4400(Lcom/motorola/Camera/Camcorder;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4400(Lcom/motorola/Camera/Camcorder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    rsub-int/lit8 v4, v17, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4300(Lcom/motorola/Camera/Camcorder;)Landroid/widget/ProgressBar;

    move-result-object v2

    rsub-int/lit8 v3, v17, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 788
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4500(Lcom/motorola/Camera/Camcorder;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$4500(Lcom/motorola/Camera/Camcorder;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 792
    .end local v17           #buffer:I
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_24

    const/4 v2, 0x1

    :goto_5
    #setter for: Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z
    invoke-static {v3, v2}, Lcom/motorola/Camera/Camcorder;->access$4602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->initializeRecorder()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$900(Lcom/motorola/Camera/Camcorder;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 792
    :cond_24
    const/4 v2, 0x0

    goto :goto_5

    .line 803
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-static {v2}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$4800(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/LocUtility;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v5}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v6}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I
    invoke-static {v8}, Lcom/motorola/Camera/Camcorder;->access$4900(Lcom/motorola/Camera/Camcorder;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v9, v9, Lcom/motorola/Camera/Camcorder;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v10, v10, Lcom/motorola/Camera/Camcorder;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v2 .. v10}, Lcom/motorola/Camera/CameraUtility;->showEulaMessage(Landroid/content/Context;Lcom/motorola/Camera/LocUtility;Lcom/motorola/Camera/View/Control/OnScreenController;ZLandroid/app/Activity;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v2

    move-object/from16 v0, v33

    #setter for: Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v2}, Lcom/motorola/Camera/Camcorder;->access$4702(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$5002(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogOpen()V

    goto/16 :goto_0

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_c
        0x4 -> :sswitch_11
        0x6 -> :sswitch_17
        0x8 -> :sswitch_13
        0xa -> :sswitch_14
        0xf -> :sswitch_19
        0x16 -> :sswitch_1a
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_23
        0x1b -> :sswitch_24
        0x1f -> :sswitch_2b
        0x21 -> :sswitch_2d
        0x23 -> :sswitch_27
        0x28 -> :sswitch_2c
        0x29 -> :sswitch_b
        0x2a -> :sswitch_2d
        0x2b -> :sswitch_7
        0x30 -> :sswitch_25
        0x33 -> :sswitch_2e
        0x34 -> :sswitch_a
        0x35 -> :sswitch_2f
        0x38 -> :sswitch_15
        0x39 -> :sswitch_9
        0x3a -> :sswitch_2
        0x3b -> :sswitch_2a
        0x3c -> :sswitch_29
        0x3d -> :sswitch_28
        0x3e -> :sswitch_1
        0x3f -> :sswitch_30
        0x40 -> :sswitch_1d
        0x45 -> :sswitch_12
        0x48 -> :sswitch_0
        0x49 -> :sswitch_26
        0x6d -> :sswitch_32
        0x6e -> :sswitch_1e
        0x70 -> :sswitch_16
        0x71 -> :sswitch_4
        0x72 -> :sswitch_d
        0x73 -> :sswitch_d
        0x74 -> :sswitch_31
        0x76 -> :sswitch_33
        0x77 -> :sswitch_34
        0x78 -> :sswitch_1f
        0x7b -> :sswitch_3
        0x80 -> :sswitch_8
        0x81 -> :sswitch_36
        0x82 -> :sswitch_37
        0x83 -> :sswitch_35
        0x86 -> :sswitch_38
        0x87 -> :sswitch_e
        0x88 -> :sswitch_f
        0x89 -> :sswitch_10
        0x8a -> :sswitch_18
        0x320 -> :sswitch_6
        0x321 -> :sswitch_5
        0x322 -> :sswitch_20
        0x323 -> :sswitch_21
        0x324 -> :sswitch_22
    .end sparse-switch

    .line 731
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$MainHandler;->mActivityReference:Landroid/app/Activity;

    .line 267
    return-void
.end method
