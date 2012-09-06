.class Lcom/motorola/android/internal/telephony/IccCardProxy$1;
.super Landroid/os/Handler;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/IccCardProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :pswitch_0
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message with number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/IccCardProxy;->access$002(Lcom/motorola/android/internal/telephony/IccCardProxy;Z)Z

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/IccCardProxy;->access$002(Lcom/motorola/android/internal/telephony/IccCardProxy;Z)Z

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    .line 174
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->updateStateProperty()V

    goto :goto_0

    .line 177
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    #getter for: Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->access$100(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 178
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    const-string v1, "ABSENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_5
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    #getter for: Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->access$200(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 185
    :pswitch_6
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;->this$0:Lcom/motorola/android/internal/telephony/IccCardProxy;

    #getter for: Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->access$300(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
