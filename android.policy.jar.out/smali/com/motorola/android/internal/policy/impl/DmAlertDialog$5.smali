.class Lcom/motorola/android/internal/policy/impl/DmAlertDialog$5;
.super Ljava/lang/Object;
.source "DmAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/DmAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$5;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$5;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #setter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItem:I
    invoke-static {v0, p2}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$1002(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I

    .line 432
    return-void
.end method
