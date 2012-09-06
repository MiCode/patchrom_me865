.class public Lcom/eclipse/android/razr/bootstrap/BootService;
.super Landroid/app/Service;
.source "BootService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DBB/BootService"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eclipse/android/razr/bootstrap/BootService;->mHandler:Landroid/os/Handler;

    .line 9
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 18
    iget-object v0, p0, Lcom/eclipse/android/razr/bootstrap/BootService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/eclipse/android/razr/bootstrap/BootService$1;

    invoke-direct {v1, p0}, Lcom/eclipse/android/razr/bootstrap/BootService$1;-><init>(Lcom/eclipse/android/razr/bootstrap/BootService;)V

    .line 57
    const-wide/16 v2, 0x7530

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method
