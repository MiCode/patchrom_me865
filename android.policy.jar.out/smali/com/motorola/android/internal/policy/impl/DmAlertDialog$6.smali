.class Lcom/motorola/android/internal/policy/impl/DmAlertDialog$6;
.super Ljava/lang/Object;
.source "DmAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 435
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$6;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$6;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #getter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$1100(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 438
    return-void
.end method
