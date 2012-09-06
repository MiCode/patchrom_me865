.class Lcom/motorola/Camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private mActivityReference:Landroid/app/Activity;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 2996
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2996
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$MainHandler;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 3007
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v1, v1, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 3739
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 3009
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 3736
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3737
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainHandler:handleMessage:Receive illegal message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3011
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/motorola/Camera/Camera;->restartPreview(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1300(Lcom/motorola/Camera/Camera;Z)V

    goto :goto_0

    .line 3014
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #calls: Lcom/motorola/Camera/Camera;->restartPreview(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1300(Lcom/motorola/Camera/Camera;Z)V

    goto :goto_0

    .line 3018
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1500(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3019
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->toggleCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1600(Lcom/motorola/Camera/Camera;)V

    goto :goto_0

    .line 3028
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 3030
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto :goto_0

    .line 3034
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->launchGallery(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3035
    const-string v1, "MotoCamera"

    const-string v2, "launchGallery() - couldn\'t launch gallery, activity doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006e

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3042
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3047
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    goto/16 :goto_0

    .line 3052
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideStatusSet(Z)V

    .line 3056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3061
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3068
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0065

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3072
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b015a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3076
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0066

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3080
    :sswitch_c
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamera"

    const-string v2, "SHOW_TOAST_AND_EXIT_CAMERA occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0097

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3082
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 3083
    .local v14, broadcastIntent:Landroid/content/Intent;
    const-string v1, "com.motorola.internal.intent.extra.REASON"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0097

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3084
    const-string v1, "com.motorola.internal.intent.extra.APP_NAME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3085
    const-string v1, "com.motorola.internal.intent.action.QUICK_LAUNCH_APP_FAILED"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3086
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1, v14}, Lcom/motorola/Camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 3087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3091
    .end local v14           #broadcastIntent:Landroid/content/Intent;
    :sswitch_d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "EXIT_CAMERA occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 3098
    :sswitch_e
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3102
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3105
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3109
    :cond_8
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 3125
    :pswitch_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR_OCCUR occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3130
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mIsStitching:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2302(Lcom/motorola/Camera/Camera;Z)Z

    .line 3132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 3135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->closeCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2500(Lcom/motorola/Camera/Camera;)V

    .line 3136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3138
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 3139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateRemainCount()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2700(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3112
    :pswitch_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR_OUT_OF_MEMORY occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006c

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto :goto_1

    .line 3118
    :pswitch_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_c

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_ERROR_STITCH_ENGINE_FAIL occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    goto/16 :goto_1

    .line 3144
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 3146
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    goto/16 :goto_0

    .line 3150
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateLocationText()V

    goto/16 :goto_0

    .line 3155
    :sswitch_11
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3163
    :goto_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_e

    const-string v1, "MotoCamera"

    const-string v2, " POST_VIEW_DECODE: In Message "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->isPostCaptureAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CameraView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/View/CameraView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/View/CameraView;->getLeft()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->thumbAnimation(Landroid/graphics/Bitmap;III)V

    .line 3168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mAnimationRunning:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3302(Lcom/motorola/Camera/Camera;Z)Z

    .line 3173
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x85

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3156
    :catch_0
    move-exception v17

    .line 3157
    .local v17, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_2

    .end local v17           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camera;->access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v1

    .line 3170
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 3176
    :sswitch_12
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_11

    const-string v1, "MotoCamera"

    const-string v2, "Post View Thumbnail Animation finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mAnimationRunning:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3302(Lcom/motorola/Camera/Camera;Z)Z

    .line 3178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3400(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    .line 3181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->rotateCurrentThumbnail()V

    .line 3182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3184
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_12

    .line 3185
    const-string v1, "MotoCamera"

    const-string v2, "KPI capture stop after thumb animation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3194
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 3198
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 3201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/StoreImageUtility;->clearReferences()V

    .line 3206
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3209
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 3213
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_0

    .line 3220
    :sswitch_15
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_16

    const-string v1, "MotoCamera"

    const-string v2, "JPEG_PICTURE_CALLBACK_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_18

    .line 3226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3227
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b009c

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3230
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 3233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3236
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 3237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3239
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3243
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3246
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->closeCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2500(Lcom/motorola/Camera/Camera;)V

    .line 3248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3252
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera$ImageCapture;->dismissFreezeFrame()V

    goto/16 :goto_0

    .line 3257
    :sswitch_16
    const-string v1, "MotoCamera"

    const-string v2, "BURST_JPEG_PICTURE_CALLBACK_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 3274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/StoreImageUtility;->clearReferences()V

    .line 3277
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3902(Lcom/motorola/Camera/Camera;I)I

    .line 3281
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->closeCamera()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2500(Lcom/motorola/Camera/Camera;)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3287
    :sswitch_17
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_20

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_VF_MATCH_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3290
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_21

    const-string v1, "MotoCamera"

    const-string v2, "PANORAMA_VF_MATCH_TIMEOUT : Stop Capture!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4000(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3297
    :sswitch_18
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_22

    .line 3298
    const-string v1, "MotoCamera"

    const-string v2, "AUTO_FOCUS_CALLBACK_TIMEOUT occurs!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/FocusManager;->onAutoFocus(Z)V

    goto/16 :goto_0

    .line 3304
    :sswitch_19
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCamera"

    const-string v2, "Capture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isPanoramaMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3600(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4300(Lcom/motorola/Camera/Camera;)I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 3314
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "MotoCamera"

    const-string v2, "clear Vf match JPEG_PICTURE_CALLBACK_TIMEOUT in CameraGlobalType.CAPTURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4000(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3321
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->doSnap()V

    goto/16 :goto_0

    .line 3327
    :sswitch_1a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->startShutterAnim()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4400(Lcom/motorola/Camera/Camera;)V

    .line 3328
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3332
    :sswitch_1b
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->stopShutterAnim()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4500(Lcom/motorola/Camera/Camera;)V

    .line 3333
    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3337
    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 3338
    .local v21, zoomToValue:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    move/from16 v0, v21

    if-eq v0, v1, :cond_0

    .line 3340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4602(Lcom/motorola/Camera/Camera;Z)Z

    .line 3341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move/from16 v0, v21

    #calls: Lcom/motorola/Camera/Camera;->zoomTo(I)V
    invoke-static {v1, v0}, Lcom/motorola/Camera/Camera;->access$4700(Lcom/motorola/Camera/Camera;I)V

    .line 3343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    goto/16 :goto_0

    .line 3350
    .end local v21           #zoomToValue:I
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v1, v1, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_0

    .line 3352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto/16 :goto_0

    .line 3357
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3358
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3359
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3361
    .local v11, EI:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4802(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3370
    .end local v11           #EI:I
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3371
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3372
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3373
    .local v10, CV:I
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tnrf63 new contrast value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4802(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "contrast"

    invoke-virtual {v1, v2, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentContrastValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3383
    .end local v10           #CV:I
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3384
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3385
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 3386
    .local v12, SV:I
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tnrf63 new saturation value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4802(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "saturation"

    invoke-virtual {v1, v2, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentSaturationValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3396
    .end local v12           #SV:I
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3397
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tnrf63 new ISO value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentISOValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4802(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "iso"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentISOValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 3405
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/MotionEvent;

    .line 3406
    .local v18, event:Landroid/view/MotionEvent;
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 3410
    .end local v18           #event:Landroid/view/MotionEvent;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$5000(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideAnimatedThumbnail()V

    goto/16 :goto_0

    .line 3414
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v2, v2, Lcom/motorola/Camera/Camera;->mIsHandShakeShown:Z

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastHandShake(Z)V

    .line 3415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->isMultishotMode()Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3800(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->disableMultishot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5100(Lcom/motorola/Camera/Camera;)V

    .line 3418
    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCameraLaunchedFromCamcorder()Z

    move-result v1

    if-nez v1, :cond_29

    .line 3422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3425
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3424
    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCameraLaunchFromCamcorderFlag(Z)V

    goto :goto_4

    .line 3428
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3433
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3440
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLastCameraMode(I)V

    .line 3441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->launchCamcorder()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5200(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3446
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    .line 3447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3450
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/motorola/Camera/Camera;->enablePanorama(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5300(Lcom/motorola/Camera/Camera;Z)V

    .line 3451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3454
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4302(Lcom/motorola/Camera/Camera;I)I

    .line 3455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 3457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getStitchMode()Ljava/lang/String;

    move-result-object v20

    .line 3458
    .local v20, stitchMode:Ljava/lang/String;
    const-string v1, "left-right"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    .line 3465
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    .line 3471
    .local v16, display:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$5400(Lcom/motorola/Camera/Camera;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getRotation()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mDisplayHeight:I
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$5500(Lcom/motorola/Camera/Camera;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->init(ILandroid/os/Handler;II)V

    .line 3473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 3474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mIsStitching:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2302(Lcom/motorola/Camera/Camera;Z)Z

    goto/16 :goto_0

    .line 3459
    .end local v16           #display:Landroid/view/Display;
    :cond_2a
    const-string v1, "right-left"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto :goto_5

    .line 3460
    :cond_2b
    const-string v1, "up-down"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x2

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_5

    .line 3461
    :cond_2c
    const-string v1, "down-up"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x3

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_5

    .line 3462
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x4

    #setter for: Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5402(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_5

    .line 3478
    .end local v20           #stitchMode:Ljava/lang/String;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4302(Lcom/motorola/Camera/Camera;I)I

    .line 3479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$2402(Lcom/motorola/Camera/Camera;I)I

    .line 3480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1800(Lcom/motorola/Camera/Camera;)V

    .line 3481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3482
    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3483
    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    if-eqz v1, :cond_30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3484
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3487
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    .line 3488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3490
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3494
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableMultiShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5600(Lcom/motorola/Camera/Camera;)V

    .line 3495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3499
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4300(Lcom/motorola/Camera/Camera;)I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 3500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->reset()V

    .line 3501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 3502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 3504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3506
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_32

    .line 3507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #setter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 3513
    :cond_32
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0d0048

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    #setter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$2002(Lcom/motorola/Camera/Camera;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 3516
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0d0049

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$2102(Lcom/motorola/Camera/Camera;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 3517
    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3508
    :catch_1
    move-exception v17

    .line 3509
    .local v17, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3510
    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_6

    .line 3521
    .end local v17           #e:Ljava/lang/OutOfMemoryError;
    :cond_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 3522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3524
    :cond_36
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v1, :cond_0

    .line 3525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    goto/16 :goto_0

    .line 3530
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->initializeFirstTime()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3533
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->setCameraParameters()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5900(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3537
    :sswitch_31
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 3538
    .local v15, currentScene:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 3539
    .local v19, lastScene:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 3541
    const/4 v1, 0x7

    if-ne v15, v1, :cond_37

    const/4 v1, 0x7

    move/from16 v0, v19

    if-ne v0, v1, :cond_38

    :cond_37
    const/4 v1, 0x7

    if-eq v15, v1, :cond_3a

    const/4 v1, 0x7

    move/from16 v0, v19

    if-ne v0, v1, :cond_3a

    .line 3544
    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateScenesEffects()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6000(Lcom/motorola/Camera/Camera;)V

    .line 3545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->startDevice()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6100(Lcom/motorola/Camera/Camera;)V

    .line 3550
    :cond_39
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3548
    :cond_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateScenesEffects()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6000(Lcom/motorola/Camera/Camera;)V

    goto :goto_7

    .line 3553
    .end local v15           #currentScene:I
    .end local v19           #lastScene:I
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->updateEffects()V

    .line 3556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3561
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->updateWhiteBalances()V

    .line 3564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3569
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b016f

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3572
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 3576
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->onScreenCaptureFocus()V

    goto/16 :goto_0

    .line 3580
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    goto/16 :goto_0

    .line 3583
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->onScreenCaptureUp()V

    goto/16 :goto_0

    .line 3586
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 3589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    if-eqz v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_3b

    .line 3591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v2

    iput v2, v1, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 3593
    :cond_3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto/16 :goto_0

    .line 3597
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6302(Lcom/motorola/Camera/Camera;J)J

    .line 3598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$6300(Lcom/motorola/Camera/Camera;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v4, v4, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6402(Lcom/motorola/Camera/Camera;J)J

    .line 3599
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3c

    .line 3600
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KPI: BURST_JPEG_ALL_PICTURES_SAVED. timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$6400(Lcom/motorola/Camera/Camera;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time taken for before coming here - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v5, v5, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    .line 3606
    :cond_3c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x7

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 3610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 3611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$1102(Lcom/motorola/Camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 3614
    :cond_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3616
    :cond_3e
    const-string v1, "MotoCamera"

    const-string v2, "KPI: RESTART_PREVIEW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3624
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6502(Lcom/motorola/Camera/Camera;J)J

    .line 3625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$6500(Lcom/motorola/Camera/Camera;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v4, v4, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    #setter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J
    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/Camera;->access$6602(Lcom/motorola/Camera/Camera;J)J

    .line 3627
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3f

    .line 3628
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KPI: BURST_JPEG_ALL_METADATA_STORED_TO_FILE timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$6600(Lcom/motorola/Camera/Camera;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_3f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 3634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3642
    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed Test # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTestNumber:I
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$6700(Lcom/motorola/Camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    .line 3643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6708(Lcom/motorola/Camera/Camera;)I

    goto/16 :goto_0

    .line 3646
    :sswitch_3d
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler SWITCH_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 3655
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableSingleShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2600(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3649
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableMultiShot()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$5600(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3652
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #calls: Lcom/motorola/Camera/Camera;->enablePanorama(Z)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5300(Lcom/motorola/Camera/Camera;Z)V

    goto/16 :goto_0

    .line 3658
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableHDR()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6800(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3661
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->enableWDR()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6900(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3664
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$7002(Lcom/motorola/Camera/Camera;Z)Z

    .line 3665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->initAutoTimerModeButtons()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7100(Lcom/motorola/Camera/Camera;)V

    .line 3666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, v3, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->getBtnCenter()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->createSecondaryDialog(Landroid/widget/RelativeLayout;I)V

    goto/16 :goto_0

    .line 3678
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b014b

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3681
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b0149

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3684
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7300(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b014a

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3687
    :cond_40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const v3, 0x7f0b015b

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3691
    :sswitch_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_41

    const/4 v1, 0x1

    :goto_8
    #setter for: Lcom/motorola/Camera/Camera;->mIsInternalSD:Z
    invoke-static {v2, v1}, Lcom/motorola/Camera/Camera;->access$7402(Lcom/motorola/Camera/Camera;Z)Z

    .line 3692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updateRemainCount()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2700(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3691
    :cond_41
    const/4 v1, 0x0

    goto :goto_8

    .line 3696
    :sswitch_42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3699
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v13

    .line 3701
    .local v13, autoTimerValue:I
    if-eqz v13, :cond_0

    .line 3705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutoTimerCount:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7500(Lcom/motorola/Camera/Camera;)I

    move-result v1

    if-ge v1, v13, :cond_43

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_43

    .line 3707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7700(Lcom/motorola/Camera/Camera;)Landroid/media/SoundPool;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->autoTimerSoundId:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$7600(Lcom/motorola/Camera/Camera;)I

    move-result v2

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 3710
    :cond_42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7508(Lcom/motorola/Camera/Camera;)I

    .line 3711
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$7800(Lcom/motorola/Camera/Camera;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutoTimerCount:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$7500(Lcom/motorola/Camera/Camera;)I

    move-result v4

    sub-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x50

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3714
    :cond_43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutoTimerCount:I
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7500(Lcom/motorola/Camera/Camera;)I

    move-result v1

    if-ne v1, v13, :cond_0

    .line 3717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/16 v2, 0x1b

    #calls: Lcom/motorola/Camera/Camera;->checkAndSnap(I)V
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$8000(Lcom/motorola/Camera/Camera;I)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 3725
    .end local v13           #autoTimerValue:I
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$6200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v4, v4, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget v7, v7, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v8, v8, Lcom/motorola/Camera/Camera;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v9, v9, Lcom/motorola/Camera/Camera;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/Camera/CameraUtility;->showEulaMessage(Landroid/content/Context;Lcom/motorola/Camera/LocUtility;Lcom/motorola/Camera/View/Control/OnScreenController;ZLandroid/app/Activity;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    move-object/from16 v0, v22

    #setter for: Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$8102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 3728
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$8202(Lcom/motorola/Camera/Camera;Z)Z

    .line 3729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogOpen()V

    goto/16 :goto_0

    .line 3733
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$MainHandler;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->dismissToast()V
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8300(Lcom/motorola/Camera/Camera;)V

    goto/16 :goto_0

    .line 3009
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_4
        0x6 -> :sswitch_d
        0x8 -> :sswitch_6
        0xa -> :sswitch_7
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xf -> :sswitch_10
        0x14 -> :sswitch_15
        0x15 -> :sswitch_18
        0x17 -> :sswitch_19
        0x1f -> :sswitch_24
        0x21 -> :sswitch_29
        0x23 -> :sswitch_28
        0x24 -> :sswitch_2a
        0x25 -> :sswitch_2b
        0x28 -> :sswitch_2d
        0x2b -> :sswitch_2c
        0x2c -> :sswitch_17
        0x30 -> :sswitch_13
        0x32 -> :sswitch_2f
        0x33 -> :sswitch_30
        0x35 -> :sswitch_b
        0x37 -> :sswitch_35
        0x38 -> :sswitch_c
        0x3a -> :sswitch_31
        0x3b -> :sswitch_27
        0x3c -> :sswitch_26
        0x3d -> :sswitch_25
        0x40 -> :sswitch_1c
        0x41 -> :sswitch_36
        0x42 -> :sswitch_37
        0x43 -> :sswitch_38
        0x44 -> :sswitch_f
        0x45 -> :sswitch_5
        0x46 -> :sswitch_1b
        0x47 -> :sswitch_1a
        0x48 -> :sswitch_23
        0x4a -> :sswitch_11
        0x4b -> :sswitch_12
        0x50 -> :sswitch_42
        0x64 -> :sswitch_2e
        0x65 -> :sswitch_e
        0x6a -> :sswitch_16
        0x6d -> :sswitch_39
        0x6e -> :sswitch_1d
        0x71 -> :sswitch_32
        0x72 -> :sswitch_3
        0x73 -> :sswitch_3
        0x74 -> :sswitch_3d
        0x75 -> :sswitch_0
        0x76 -> :sswitch_3f
        0x77 -> :sswitch_40
        0x78 -> :sswitch_1e
        0x7c -> :sswitch_14
        0x7d -> :sswitch_3a
        0x7e -> :sswitch_3b
        0x7f -> :sswitch_3c
        0x80 -> :sswitch_a
        0x82 -> :sswitch_41
        0x83 -> :sswitch_3e
        0x85 -> :sswitch_2
        0x86 -> :sswitch_43
        0x8a -> :sswitch_44
        0x320 -> :sswitch_34
        0x321 -> :sswitch_33
        0x322 -> :sswitch_1f
        0x323 -> :sswitch_20
        0x324 -> :sswitch_21
        0x325 -> :sswitch_22
    .end sparse-switch

    .line 3109
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3647
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public setActivityReference(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 3001
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MainHandler;->mActivityReference:Landroid/app/Activity;

    .line 3002
    return-void
.end method
