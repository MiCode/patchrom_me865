.class public Lcom/motorola/android/internal/app/LRHistory;
.super Landroid/app/Activity;
.source "LRHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "LRHistory"


# instance fields
.field private intent:Landroid/content/Intent;

.field private mNM:Landroid/app/NotificationManager;

.field private msg:Ljava/lang/String;

.field private notificationId:I

.field private time:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->intent:Landroid/content/Intent;

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/android/internal/app/LRHistory;->time:J

    .line 30
    iput-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->msg:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->title:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/app/LRHistory;->notificationId:I

    .line 33
    iput-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->mNM:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/motorola/android/internal/app/LRHistory;->finish()V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/motorola/android/internal/app/LRHistory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->intent:Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->intent:Landroid/content/Intent;

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/android/internal/app/LRHistory;->time:J

    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->intent:Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->msg:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->intent:Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->title:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->intent:Landroid/content/Intent;

    const-string v1, "notificationid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/app/LRHistory;->notificationId:I

    .line 44
    const-string v0, "LRHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/android/internal/app/LRHistory;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], msg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], title ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], notificationId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/app/LRHistory;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/app/LRHistory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->mNM:Landroid/app/NotificationManager;

    .line 47
    iget-object v0, p0, Lcom/motorola/android/internal/app/LRHistory;->mNM:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/motorola/android/internal/app/LRHistory;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 49
    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/app/LRHistory;->showDialog(I)V

    .line 50
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 54
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, object:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    iget-object v2, p0, Lcom/motorola/android/internal/app/LRHistory;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    const v2, 0x1040013

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/app/LRHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10802ca

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 62
    .local v0, myDialog:Landroid/app/Dialog;
    return-object v0
.end method
