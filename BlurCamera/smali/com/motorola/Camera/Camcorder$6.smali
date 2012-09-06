.class Lcom/motorola/Camera/Camcorder$6;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 2977
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3007
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 2979
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mLightSensorEnabled:Z
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$6200(Lcom/motorola/Camera/Camcorder;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$6300(Lcom/motorola/Camera/Camcorder;)Landroid/os/IPowerManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3003
    :cond_0
    :goto_0
    return-void

    .line 2983
    :cond_1
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v2, v3

    .line 2985
    .local v2, value:I
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHighestLightSensorValue:I
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$6400(Lcom/motorola/Camera/Camcorder;)I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 2986
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #setter for: Lcom/motorola/Camera/Camcorder;->mHighestLightSensorValue:I
    invoke-static {v3, v2}, Lcom/motorola/Camera/Camcorder;->access$6402(Lcom/motorola/Camera/Camcorder;I)I

    .line 2990
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHighestLightSensorValue:I
    invoke-static {v4}, Lcom/motorola/Camera/Camcorder;->access$6400(Lcom/motorola/Camera/Camcorder;)I

    move-result v4

    #calls: Lcom/motorola/Camera/Camcorder;->getAutoBrightnessValue(I)I
    invoke-static {v3, v4}, Lcom/motorola/Camera/Camcorder;->access$6500(Lcom/motorola/Camera/Camcorder;I)I

    move-result v1

    .line 2991
    .local v1, lcdValue:I
    const/16 v3, 0x5a

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevel:I
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$6600(Lcom/motorola/Camera/Camcorder;)I

    move-result v3

    if-le v1, v3, :cond_0

    .line 2997
    :try_start_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #setter for: Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevel:I
    invoke-static {v3, v1}, Lcom/motorola/Camera/Camcorder;->access$6602(Lcom/motorola/Camera/Camcorder;I)I

    .line 2998
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$6;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$6300(Lcom/motorola/Camera/Camcorder;)Landroid/os/IPowerManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 2999
    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e13386: setBacklightBrightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3000
    :catch_0
    move-exception v0

    .line 3001
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MotoCamcorder"

    const-string v4, "e13386: onSensorChanged: setBacklightBrightness() fail:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
