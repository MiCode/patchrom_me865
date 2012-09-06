.class Lcom/motorola/android/internal/policy/impl/AlarmScreen$5;
.super Ljava/lang/Object;
.source "AlarmScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/policy/impl/AlarmScreen;->playAlert(Lcom/motorola/android/internal/policy/impl/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$5;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 437
    const-string v0, "AlarmScreen"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 439
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 440
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$5;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$1002(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 441
    const/4 v0, 0x1

    return v0
.end method
