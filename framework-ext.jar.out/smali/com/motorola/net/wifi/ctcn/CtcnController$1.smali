.class Lcom/motorola/net/wifi/ctcn/CtcnController$1;
.super Ljava/lang/Object;
.source "CtcnController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/CtcnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    .locals 1
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->mDirection:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1004
    const-wide/16 v3, -0x1

    .local v3, preTxPkts:J
    const-wide/16 v1, -0x1

    .line 1006
    .local v1, preRxPkts:J
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J
    invoke-static {v9}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$000(Lcom/motorola/net/wifi/ctcn/CtcnController;)J

    move-result-wide v3

    .line 1007
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J
    invoke-static {v9}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$100(Lcom/motorola/net/wifi/ctcn/CtcnController;)J

    move-result-wide v1

    .line 1010
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v10, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->ifname:Ljava/lang/String;
    invoke-static {v10}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$200(Lcom/motorola/net/wifi/ctcn/CtcnController;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v10

    #setter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J
    invoke-static {v9, v10, v11}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$002(Lcom/motorola/net/wifi/ctcn/CtcnController;J)J

    .line 1011
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v10, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->ifname:Ljava/lang/String;
    invoke-static {v10}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$200(Lcom/motorola/net/wifi/ctcn/CtcnController;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v10

    #setter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J
    invoke-static {v9, v10, v11}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$102(Lcom/motorola/net/wifi/ctcn/CtcnController;J)J

    .line 1012
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J
    invoke-static {v9}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$000(Lcom/motorola/net/wifi/ctcn/CtcnController;)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-gtz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const-wide/16 v10, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J
    invoke-static {v9, v10, v11}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$002(Lcom/motorola/net/wifi/ctcn/CtcnController;J)J

    .line 1013
    :cond_0
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J
    invoke-static {v9}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$100(Lcom/motorola/net/wifi/ctcn/CtcnController;)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-gtz v9, :cond_1

    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const-wide/16 v10, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J
    invoke-static {v9, v10, v11}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$102(Lcom/motorola/net/wifi/ctcn/CtcnController;J)J

    .line 1015
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_3

    .line 1016
    :cond_2
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J
    invoke-static {v9}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$000(Lcom/motorola/net/wifi/ctcn/CtcnController;)J

    move-result-wide v9

    sub-long v7, v9, v3

    .line 1017
    .local v7, sent:J
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J
    invoke-static {v9}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$100(Lcom/motorola/net/wifi/ctcn/CtcnController;)J

    move-result-wide v9

    sub-long v5, v9, v1

    .line 1020
    .local v5, received:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_4

    .line 1021
    const/16 v0, 0x11

    .line 1032
    .local v0, direction:I
    :goto_0
    iget v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->mDirection:I

    if-eq v9, v0, :cond_3

    .line 1033
    iput v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->mDirection:I

    .line 1034
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v9, v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendCtcnStateChangeBroadcast(I)V

    .line 1038
    .end local v0           #direction:I
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_3
    iget-object v9, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, p0, v10, v11}, Lcom/motorola/net/wifi/ctcn/CtcnController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1039
    return-void

    .line 1022
    .restart local v5       #received:J
    .restart local v7       #sent:J
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_5

    .line 1023
    const/16 v0, 0x10

    .restart local v0       #direction:I
    goto :goto_0

    .line 1024
    .end local v0           #direction:I
    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_6

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_6

    .line 1025
    const/16 v0, 0xf

    .restart local v0       #direction:I
    goto :goto_0

    .line 1026
    .end local v0           #direction:I
    :cond_6
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_7

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_7

    .line 1027
    const/16 v0, 0x12

    .restart local v0       #direction:I
    goto :goto_0

    .line 1029
    .end local v0           #direction:I
    :cond_7
    const/16 v0, 0x12

    .restart local v0       #direction:I
    goto :goto_0
.end method
