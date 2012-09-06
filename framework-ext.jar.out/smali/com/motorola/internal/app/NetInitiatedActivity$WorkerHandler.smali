.class Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;
.super Landroid/os/Handler;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/app/NetInitiatedActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/internal/app/NetInitiatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;->this$0:Lcom/motorola/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/internal/app/NetInitiatedActivity;Lcom/motorola/internal/app/NetInitiatedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;-><init>(Lcom/motorola/internal/app/NetInitiatedActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;->this$0:Lcom/motorola/internal/app/NetInitiatedActivity;

    #calls: Lcom/motorola/internal/app/NetInitiatedActivity;->playAlert()V
    invoke-static {v0}, Lcom/motorola/internal/app/NetInitiatedActivity;->access$100(Lcom/motorola/internal/app/NetInitiatedActivity;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;->this$0:Lcom/motorola/internal/app/NetInitiatedActivity;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/internal/app/NetInitiatedActivity;->mNoresponse:Z
    invoke-static {v0, v1}, Lcom/motorola/internal/app/NetInitiatedActivity;->access$202(Lcom/motorola/internal/app/NetInitiatedActivity;Z)Z

    .line 100
    iget-object v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;->this$0:Lcom/motorola/internal/app/NetInitiatedActivity;

    invoke-virtual {v0}, Lcom/motorola/internal/app/NetInitiatedActivity;->finish()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
