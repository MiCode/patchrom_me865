.class Lcom/motorola/android/internal/policy/impl/AlarmScreen$3;
.super Ljava/lang/Object;
.source "AlarmScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/policy/impl/AlarmScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
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
    .line 197
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$3;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    const/4 v1, 0x0

    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->snooze(Z)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$300(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Z)V

    .line 200
    return-void
.end method
