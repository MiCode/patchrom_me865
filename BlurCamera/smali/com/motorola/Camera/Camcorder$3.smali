.class Lcom/motorola/Camera/Camcorder$3;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1582
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1584
    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1586
    .local v1, isSDEvent:Z
    const-string v4, "MotoCamcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive a broadcast with action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v4}, Lcom/motorola/Camera/Camcorder;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1594
    const-string v4, "MotoCamcorder"

    const-string v5, "onReceive - Scanner finished running, load thumbnail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$5400(Lcom/motorola/Camera/Camcorder;)V

    .line 1596
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    new-instance v5, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    iget-object v6, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    #setter for: Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camcorder;->access$5502(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 1597
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$5500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 1599
    :cond_2
    if-eqz v3, :cond_5

    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1600
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1602
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->isExternalStorageDirectory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->isInExternalStorageDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1604
    :cond_3
    const/4 v1, 0x1

    .line 1606
    :cond_4
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    .line 1607
    const-string v4, "MotoCamcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive - path ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isSDEvent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    .end local v2           #path:Ljava/lang/String;
    :cond_5
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1612
    :cond_6
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    .line 1613
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 1614
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1615
    :cond_7
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    .line 1616
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$5600(Lcom/motorola/Camera/Camcorder;)V

    .line 1618
    if-eqz v1, :cond_c

    .line 1619
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v5

    #setter for: Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camcorder;->access$5702(Lcom/motorola/Camera/Camcorder;I)I

    .line 1620
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_8

    .line 1621
    const-string v4, "MotoCamcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive - isSDEvent internalVideolengthRemaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I
    invoke-static {v6}, Lcom/motorola/Camera/Camcorder;->access$5700(Lcom/motorola/Camera/Camcorder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_8
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$5700(Lcom/motorola/Camera/Camcorder;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1623
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_9

    .line 1624
    const-string v4, "MotoCamcorder"

    const-string v5, "onReceive - SD plug out: change to internal storage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_9
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 1626
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I
    invoke-static {v5}, Lcom/motorola/Camera/Camcorder;->access$5700(Lcom/motorola/Camera/Camcorder;)I

    move-result v5

    int-to-long v5, v5

    #setter for: Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J
    invoke-static {v4, v5, v6}, Lcom/motorola/Camera/Camcorder;->access$2902(Lcom/motorola/Camera/Camcorder;J)J

    .line 1627
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v5, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camcorder;->access$4602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 1628
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v5}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    .line 1629
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)V

    .line 1630
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 1631
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v5, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camcorder;->access$202(Lcom/motorola/Camera/Camcorder;I)I

    .line 1633
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 1634
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v4}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 1637
    :cond_a
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v5, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camcorder;->access$202(Lcom/motorola/Camera/Camcorder;I)I

    .line 1638
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_b

    .line 1639
    const-string v4, "MotoCamcorder"

    const-string v5, "onReceive - SD plug out: finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_b
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 1642
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v4}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 1646
    :cond_c
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_d

    .line 1647
    const-string v4, "MotoCamcorder"

    const-string v5, "onReceive - internal storage not available: finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_d
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v5, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/Camera/Camcorder;->access$202(Lcom/motorola/Camera/Camcorder;I)I

    .line 1650
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 1651
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v4}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 1654
    :cond_e
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 1655
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x34

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1656
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)V

    goto/16 :goto_0

    .line 1659
    :cond_f
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1660
    sget-boolean v4, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSDPlug()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v1, :cond_10

    .line 1662
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$200(Lcom/motorola/Camera/Camcorder;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1664
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$5800(Lcom/motorola/Camera/Camcorder;)V

    .line 1666
    :cond_10
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)V

    .line 1667
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$3;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x34

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
