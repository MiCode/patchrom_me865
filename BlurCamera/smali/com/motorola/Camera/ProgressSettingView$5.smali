.class Lcom/motorola/Camera/ProgressSettingView$5;
.super Ljava/lang/Object;
.source "ProgressSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/ProgressSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/ProgressSettingView;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/ProgressSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView$5;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$5;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$300(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 426
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$5;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryClosed()V

    .line 427
    return-void
.end method
