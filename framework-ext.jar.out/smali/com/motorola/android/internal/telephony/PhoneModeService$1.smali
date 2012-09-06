.class Lcom/motorola/android/internal/telephony/PhoneModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/PhoneModeService;->setContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private loaded1:Z

.field private loaded2:Z

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/PhoneModeService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 438
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 439
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded1:Z

    .line 440
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded2:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 444
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mPostModeChangeProcessing:Z
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$100(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, state:Ljava/lang/String;
    const-string v7, "LOADED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "LOCKED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "FAST"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 451
    :cond_2
    const-string v7, "modemId"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 455
    .local v1, modemId:I
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v7

    iget v7, v7, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne v1, v7, :cond_5

    .line 456
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v0

    .line 457
    .local v0, modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v7

    iget v7, v7, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v8}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$300(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v8

    iget v8, v8, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    if-ge v7, v8, :cond_4

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$400(Lcom/motorola/android/internal/telephony/PhoneModeService;)I

    move-result v4

    .line 467
    .local v4, type:I
    :goto_1
    if-nez v4, :cond_8

    sget-object v2, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 474
    .local v2, radioState:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :goto_2
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v7

    if-ne v0, v7, :cond_a

    .line 475
    const-string v7, "LOCKED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    if-ne v2, v7, :cond_9

    .line 477
    sget-object v2, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 478
    iput-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded1:Z

    .line 491
    :goto_3
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->setRadioStateToDesired(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;)V
    invoke-static {v7, v0, v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$700(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;)V

    .line 494
    .end local v0           #modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .end local v1           #modemId:I
    .end local v2           #radioState:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    .end local v4           #type:I
    :cond_3
    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded1:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded2:Z

    if-eqz v7, :cond_0

    .line 495
    const-string v7, "Receviced PRECACHE of two ICC cards, mode change done!"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    .line 496
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #setter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z
    invoke-static {v7, v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$802(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)Z

    .line 497
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #setter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mPostModeChangeProcessing:Z
    invoke-static {v7, v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$102(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)Z

    .line 498
    iput-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded1:Z

    .line 499
    iput-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded2:Z

    .line 500
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitched:Z
    invoke-static {v8}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$900(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    move-result v8

    iget-object v9, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mOldIsSwitched:Z
    invoke-static {v9}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1000(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    move-result v9

    if-eq v8, v9, :cond_c

    :goto_4
    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeDone(Z)V
    invoke-static {v7, v5}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1100(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)V

    goto/16 :goto_0

    .line 457
    .restart local v0       #modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .restart local v1       #modemId:I
    :cond_4
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$500(Lcom/motorola/android/internal/telephony/PhoneModeService;)I

    move-result v4

    goto :goto_1

    .line 459
    .end local v0           #modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_5
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$300(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v7

    iget v7, v7, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne v1, v7, :cond_7

    .line 460
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$300(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v0

    .line 461
    .restart local v0       #modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$300(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v7

    iget v7, v7, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    iget-object v8, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v8}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v8

    iget v8, v8, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    if-ge v7, v8, :cond_6

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$400(Lcom/motorola/android/internal/telephony/PhoneModeService;)I

    move-result v4

    .restart local v4       #type:I
    :goto_5
    goto :goto_1

    .end local v4           #type:I
    :cond_6
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$500(Lcom/motorola/android/internal/telephony/PhoneModeService;)I

    move-result v4

    goto :goto_5

    .line 464
    .end local v0           #modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unkown modem ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    .restart local v0       #modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .restart local v4       #type:I
    :cond_8
    sget-object v2, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    goto/16 :goto_2

    .line 480
    .restart local v2       #radioState:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :cond_9
    iput-boolean v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded1:Z

    goto/16 :goto_3

    .line 483
    :cond_a
    const-string v7, "LOCKED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    if-ne v2, v7, :cond_b

    .line 485
    sget-object v2, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 486
    iput-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded2:Z

    goto/16 :goto_3

    .line 488
    :cond_b
    iput-boolean v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$1;->loaded2:Z

    goto/16 :goto_3

    .end local v0           #modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .end local v1           #modemId:I
    .end local v2           #radioState:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    .end local v4           #type:I
    :cond_c
    move v5, v6

    .line 500
    goto :goto_4
.end method
