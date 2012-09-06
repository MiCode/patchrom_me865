.class Lcom/motorola/Camera/Camcorder$9;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;

.field final synthetic val$externalVideoRemainTime:I


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5091
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    iput p2, p0, Lcom/motorola/Camera/Camcorder$9;->val$externalVideoRemainTime:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 5094
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    #setter for: Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camcorder;->access$7302(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 5095
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 5096
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    iget v1, p0, Lcom/motorola/Camera/Camcorder$9;->val$externalVideoRemainTime:I

    int-to-long v1, v1

    #setter for: Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J
    invoke-static {v0, v1, v2}, Lcom/motorola/Camera/Camcorder;->access$2902(Lcom/motorola/Camera/Camcorder;J)J

    .line 5097
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camcorder;->access$4602(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 5098
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 5099
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x34

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5100
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$9;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)V

    .line 5101
    return-void
.end method
