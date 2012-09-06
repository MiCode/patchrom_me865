.class Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDataNetworkObserver"
.end annotation


# instance fields
.field private mDefaultDataHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;->this$0:Lcom/android/server/ConnectivityService;

    .line 354
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 355
    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;->mDefaultDataHandler:Landroid/os/Handler;

    .line 356
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;->mDefaultDataHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultDataNetworkObserver;->mDefaultDataHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    return-void
.end method
