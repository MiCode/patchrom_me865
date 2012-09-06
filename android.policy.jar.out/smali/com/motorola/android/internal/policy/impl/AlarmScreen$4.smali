.class Lcom/motorola/android/internal/policy/impl/AlarmScreen$4;
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
    .line 206
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$4;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$4;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->dismiss()V
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$900(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    .line 209
    return-void
.end method
