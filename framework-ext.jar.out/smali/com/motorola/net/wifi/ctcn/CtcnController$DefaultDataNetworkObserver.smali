.class Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;
.super Landroid/database/ContentObserver;
.source "CtcnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/CtcnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDataNetworkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;


# direct methods
.method public constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    .locals 1
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    .line 1098
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1099
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    .line 1104
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    .line 1105
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z

    .line 1106
    return-void
.end method
