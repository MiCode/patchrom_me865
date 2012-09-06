.class Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;
.super Ljava/lang/Object;
.source "WifiCttpDaemons.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DaemontMonitor"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;

.field private monitor:Z

.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->mMessage:Landroid/os/Message;

    .line 534
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->monitor:Z

    .line 542
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->monitor:Z

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #calls: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->getSocketError()I
    invoke-static {v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1700(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 544
    const-string v0, "CttpdProxy"

    const-string v1, "Daemon error"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->monitor:Z

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 551
    :cond_1
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->monitor:Z

    .line 538
    return-void
.end method
