.class Lcom/android/server/InputMethodManagerService$8;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mExtKeyboardBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1000(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/server/InputMethodManagerService;->mExtKeyboardDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$902(Lcom/android/server/InputMethodManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1375
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mExtKeyboardDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$900(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1377
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mExtKeyboardDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$900(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Select input method"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mExtKeyboardDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$900(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1379
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/InputMethodManagerService;->mExtKeyboardNotificationShown:Z
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$1102(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 1380
    return-void
.end method
