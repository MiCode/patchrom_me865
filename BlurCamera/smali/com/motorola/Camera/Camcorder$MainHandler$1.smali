.class Lcom/motorola/Camera/Camcorder$MainHandler$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camcorder$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/Camcorder$MainHandler;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder$MainHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$MainHandler$1;->this$1:Lcom/motorola/Camera/Camcorder$MainHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 290
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 291
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$MainHandler$1;->this$1:Lcom/motorola/Camera/Camcorder$MainHandler;

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->closeCamera()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$500(Lcom/motorola/Camera/Camcorder;)V

    .line 292
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$MainHandler$1;->this$1:Lcom/motorola/Camera/Camcorder$MainHandler;

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 293
    return-void
.end method
