.class Lcom/android/internal/policy/impl/KeyguardViewMediator$2;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1296
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1355
    :goto_0
    :pswitch_0
    return-void

    .line 1298
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1304
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    .line 1305
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1306
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1307
    :cond_0
    const-string v1, "KeyguardViewMediator"

    const-string v3, "delay showing KeyguardView until boot complete"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1312
    .end local v0           #am:Landroid/app/IActivityManager;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1315
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1318
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1321
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1324
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1327
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    goto :goto_0

    .line 1330
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2400(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_0

    .line 1333
    :pswitch_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_1
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2500(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1336
    :pswitch_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_0

    .line 1339
    :pswitch_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_0

    .line 1342
    :pswitch_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    :goto_2
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 1345
    :pswitch_d
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v2

    .line 1346
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1347
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1351
    :pswitch_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showDmDialog(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
