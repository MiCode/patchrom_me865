.class Lcom/android/server/InputMethodManagerService$6;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$6;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$6;->val$prefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$6;->this$0:Lcom/android/server/InputMethodManagerService;

    #getter for: Lcom/android/server/InputMethodManagerService;->mIsChecked:Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$600(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    #calls: Lcom/android/server/InputMethodManagerService;->savePrefsValue(Landroid/content/SharedPreferences;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->access$700(Lcom/android/server/InputMethodManagerService;Landroid/content/SharedPreferences;Z)V

    .line 1358
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1359
    return-void
.end method
