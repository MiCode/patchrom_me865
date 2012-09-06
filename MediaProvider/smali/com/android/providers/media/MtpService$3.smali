.class Lcom/android/providers/media/MtpService$3;
.super Lcom/android/providers/media/IMtpService$Stub;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Lcom/android/providers/media/IMtpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .locals 5
    .parameter "objectHandle"

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$1300(Lcom/android/providers/media/MtpService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/providers/media/MtpService$MyTimerTask;

    iget-object v3, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {}, Lcom/android/providers/media/MtpService;->access$1000()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Lcom/android/providers/media/MtpService$MyTimerTask;-><init>(Lcom/android/providers/media/MtpService;II)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MtpService"

    const-string v2, "Exception for scheduling timer for object added event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendObjectRemoved(I)V
    .locals 5
    .parameter "objectHandle"

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$1300(Lcom/android/providers/media/MtpService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/providers/media/MtpService$MyTimerTask;

    iget-object v3, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {}, Lcom/android/providers/media/MtpService;->access$1200()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Lcom/android/providers/media/MtpService$MyTimerTask;-><init>(Lcom/android/providers/media/MtpService;II)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MtpService"

    const-string v2, "Exception for scheduling timer for object removed event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
