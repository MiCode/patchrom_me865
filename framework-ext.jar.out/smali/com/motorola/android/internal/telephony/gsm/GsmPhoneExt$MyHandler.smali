.class Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$MyHandler;
.super Landroid/os/Handler;
.source "GsmPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$MyHandler;-><init>(Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 32
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 33
    .local v1, resp:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$MyHandler;->this$0:Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;

    #calls: Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;->handleGetPreferedCompleted(Landroid/os/AsyncResult;)V
    invoke-static {v2, v0}, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;->access$000(Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 40
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
