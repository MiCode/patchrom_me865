.class Lcom/android/server/InputMethodManagerService$3;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showSwitchIMENotification(Landroid/view/inputmethod/InputMethodInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$3;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/android/server/InputMethodManagerService;->mIsChecked:Z
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$602(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 1332
    return-void
.end method
