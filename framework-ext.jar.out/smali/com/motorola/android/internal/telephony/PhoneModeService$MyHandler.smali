.class Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;
.super Landroid/os/Handler;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# static fields
.field private static final DEFAULT_PHONE:B = 0x1t

.field private static final SECONDARY_PHONE:B = 0x2t


# instance fields
.field private activate_complete:B

.field private activate_failed:B

.field private deactivate_complete:B

.field private deactivate_failed:B

.field private mModeManager:Lcom/motorola/android/internal/telephony/PhoneModeService;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService;)V
    .locals 1
    .parameter
    .parameter "manager"

    .prologue
    const/4 v0, 0x0

    .line 930
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 931
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->mModeManager:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 932
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_failed:B

    .line 933
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_failed:B

    .line 934
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_complete:B

    .line 935
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_complete:B

    .line 936
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 942
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1014
    :cond_0
    :goto_0
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_complete:B

    if-ne v2, v5, :cond_8

    .line 1016
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_failed:B

    if-nez v2, :cond_1

    .line 1017
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->iccSwitch()Z
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1600(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    .line 1020
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->activatePhones()V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1700(Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    .line 1021
    iput-byte v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_failed:B

    .line 1022
    iput-byte v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_complete:B

    .line 1039
    :cond_2
    :goto_1
    return-void

    .line 944
    :sswitch_0
    const-string v2, "EVENT_WAIT_TIMEOUT"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    .line 945
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$300(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 948
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->notifySwitchStart()V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1200(Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    .line 949
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    const/4 v3, 0x1

    #setter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitching:Z
    invoke-static {v2, v3}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1302(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)Z

    .line 950
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1400(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->deactivateIcc(Landroid/os/Message;)V

    .line 952
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$300(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1400(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->deactivateIcc(Landroid/os/Message;)V

    .line 954
    const-string v2, "now deactivate"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :cond_3
    const-string v2, "wait timeout"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    .line 957
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 961
    :sswitch_1
    const-string v2, "EVENT_DEFAULT_DEACTIVATE_COMPLETE"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$800(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 963
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 964
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 965
    const-string v2, "Default deactivation failed!"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1500(Ljava/lang/String;)V

    .line 966
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_failed:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_failed:B

    .line 968
    :cond_4
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_complete:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_complete:B

    goto/16 :goto_0

    .line 972
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    const-string v2, "EVENT_SECONDARY_DEACTIVATE_COMPLETE"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    .line 973
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$800(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 975
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 976
    const-string v2, "Secondary deactivation failed!"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1500(Ljava/lang/String;)V

    .line 977
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_failed:B

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_failed:B

    .line 979
    :cond_5
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_complete:B

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->deactivate_complete:B

    goto/16 :goto_0

    .line 983
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v2, "EVENT_DEFAULT_ACTIVATE_COMPLETE"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$800(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 985
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 986
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 987
    const-string v2, "Default activation failed!"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1500(Ljava/lang/String;)V

    .line 988
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_failed:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_failed:B

    .line 990
    :cond_6
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_complete:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_complete:B

    goto/16 :goto_0

    .line 994
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const-string v2, "EVENT_SECONDARY_ACTIVATE_COMPLETE"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$600(Ljava/lang/String;)V

    .line 995
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #getter for: Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$800(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 997
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 998
    const-string v2, "Secondary activation failed!"

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1500(Ljava/lang/String;)V

    .line 999
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_failed:B

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_failed:B

    .line 1001
    :cond_7
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_complete:B

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_complete:B

    goto/16 :goto_0

    .line 1005
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;

    .line 1006
    .local v1, request:Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->mModeManager:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1007
    monitor-enter v1

    .line 1008
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1009
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1027
    .end local v1           #request:Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;
    :cond_8
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_complete:B

    if-ne v2, v5, :cond_2

    .line 1028
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_failed:B

    if-eqz v2, :cond_9

    .line 1030
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->activatePhones()V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1700(Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    .line 1035
    :goto_2
    iput-byte v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_failed:B

    .line 1036
    iput-byte v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->activate_complete:B

    goto/16 :goto_1

    .line 1033
    :cond_9
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->onModeChangeDone()V
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1800(Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    goto :goto_2

    .line 942
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x64 -> :sswitch_5
    .end sparse-switch
.end method
