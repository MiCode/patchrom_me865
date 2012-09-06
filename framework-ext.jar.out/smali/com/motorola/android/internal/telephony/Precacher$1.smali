.class Lcom/motorola/android/internal/telephony/Precacher$1;
.super Landroid/os/Handler;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 810
    const/4 v4, 0x0

    .line 811
    .local v4, onCompleteCallBack:Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 890
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v4, :cond_1

    .line 891
    iget v5, v4, Landroid/os/Message;->arg2:I

    if-nez v5, :cond_6

    .line 892
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 897
    :cond_1
    :goto_1
    return-void

    .line 813
    :pswitch_1
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const-string v6, "Event EVENT_ICC_SWITCH_START received"

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 814
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->resetData()V
    invoke-static {v5}, Lcom/motorola/android/internal/telephony/Precacher;->access$200(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 817
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v6, 0x1

    #setter for: Lcom/motorola/android/internal/telephony/Precacher;->mDormant:Z
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$302(Lcom/motorola/android/internal/telephony/Precacher;Z)Z

    .line 818
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v5, v7}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    goto :goto_0

    .line 821
    :pswitch_2
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const-string v6, "Event EVENT_ICC_SWITCH_DONE received"

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 824
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->resetData()V
    invoke-static {v5}, Lcom/motorola/android/internal/telephony/Precacher;->access$200(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 825
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #setter for: Lcom/motorola/android/internal/telephony/Precacher;->mDormant:Z
    invoke-static {v5, v7}, Lcom/motorola/android/internal/telephony/Precacher;->access$302(Lcom/motorola/android/internal/telephony/Precacher;Z)Z

    .line 826
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/Precacher;->detect()V

    goto :goto_0

    .line 829
    :pswitch_3
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const-string v6, "Event EVENT_ICC_STATUS_CHANGED received"

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 830
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 831
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ar.result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 832
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 833
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$400(Lcom/motorola/android/internal/telephony/Precacher;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/motorola/android/internal/telephony/IccCardManager;->getDefaultPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 834
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/Precacher;->detect()V

    goto :goto_0

    .line 836
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$400(Lcom/motorola/android/internal/telephony/Precacher;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 837
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/Precacher;->detect()V

    goto/16 :goto_0

    .line 841
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event EVENT_ICC_PRECACHE_STEP_DONE."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Received"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 842
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v5, p1}, Lcom/motorola/android/internal/telephony/Precacher;->handleEvent(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 845
    :pswitch_5
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const-string v6, "Event EVENT_ICC_PRECACHE_TIMEOUT Received"

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 846
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v5, p1}, Lcom/motorola/android/internal/telephony/Precacher;->handleEvent(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 849
    :pswitch_6
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const-string v6, "Event EVENT_GET_ICCID_DONE Received"

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 850
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 851
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 852
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 853
    .local v1, data:[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    array-length v6, v1

    invoke-static {v1, v7, v6}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/motorola/android/internal/telephony/Precacher;->mIccid:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$502(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)Ljava/lang/String;

    .line 854
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iccid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mIccid:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/android/internal/telephony/Precacher;->access$500(Lcom/motorola/android/internal/telephony/Precacher;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 856
    .end local v1           #data:[B
    :cond_3
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    move-object v4, v5

    check-cast v4, Landroid/os/Message;

    .line 857
    goto/16 :goto_0

    .line 859
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const-string v6, "Event EVENT_GET_IMSI_DONE Received"

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 860
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 861
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    .line 862
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 863
    .local v2, imsi:Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMSI["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 864
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-gt v5, v6, :cond_4

    .line 865
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/android/internal/telephony/Precacher;->access$600(Lcom/motorola/android/internal/telephony/Precacher;)[Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    aput-object v2, v5, v6

    .line 868
    .end local v2           #imsi:Ljava/lang/String;
    :cond_4
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    move-object v4, v5

    check-cast v4, Landroid/os/Message;

    .line 869
    goto/16 :goto_0

    .line 871
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const-string v6, "Event EVENT_GET_MNC_LENGTH_DONE Received"

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 872
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 874
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 875
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 879
    .local v3, mncLength:I
    :goto_2
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mMncLengths:[I
    invoke-static {v5}, Lcom/motorola/android/internal/telephony/Precacher;->access$700(Lcom/motorola/android/internal/telephony/Precacher;)[I

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    aput v3, v5, v6

    .line 880
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher$1;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V

    .line 881
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    move-object v4, v5

    check-cast v4, Landroid/os/Message;

    .line 882
    goto/16 :goto_0

    .line 877
    .end local v3           #mncLength:I
    :cond_5
    const/4 v3, -0x1

    .restart local v3       #mncLength:I
    goto :goto_2

    .line 894
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #mncLength:I
    :cond_6
    iget v5, v4, Landroid/os/Message;->arg2:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
