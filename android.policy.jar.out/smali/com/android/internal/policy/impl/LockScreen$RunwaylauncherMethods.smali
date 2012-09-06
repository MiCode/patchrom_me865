.class Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/motorola/android/widget/RunwayLauncher$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunwaylauncherMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private mHideRunwayTarget:I

.field private final mHideTargetArray:[I

.field mIntentList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/motorola/android/widget/RunwayLauncher;)V
    .locals 2
    .parameter
    .parameter "runwayLauncher"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    .line 351
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideTargetArray:[I

    .line 440
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    .line 441
    return-void

    .line 351
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)Lcom/motorola/android/widget/RunwayLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    return-object v0
.end method

.method private getMatchComponentName(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)I
    .locals 11
    .parameter
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, inResolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, inActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p4, intentFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v3, -0x1

    .line 356
    .local v3, index:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 357
    .local v7, preferredSize:I
    const/4 v6, 0x0

    .line 358
    .local v6, match:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    move v4, v3

    .line 385
    .end local v3           #index:I
    .local v4, index:I
    :goto_0
    return v4

    .line 362
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_0
    if-nez v7, :cond_2

    .line 363
    const/4 v3, 0x0

    :cond_1
    :goto_1
    move v4, v3

    .line 385
    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 365
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 366
    .local v8, reInfo:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v7, :cond_4

    .line 367
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 368
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 369
    .local v5, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 372
    const/4 v6, 0x1

    .line 376
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v5           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 377
    if-eqz v6, :cond_3

    .line 381
    .end local v1           #i:I
    .end local v8           #reInfo:Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v6, :cond_1

    .line 382
    const/4 v3, 0x0

    goto :goto_1

    .line 366
    .restart local v0       #componentName:Landroid/content/ComponentName;
    .restart local v1       #i:I
    .restart local v5       #intentFilter:Landroid/content/IntentFilter;
    .restart local v8       #reInfo:Landroid/content/pm/ResolveInfo;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getResolveInfos(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/util/List;
    .locals 5
    .parameter "pm"
    .parameter "intent"
    .parameter "havePreferred"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 390
    .local v2, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v3, systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 392
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 394
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez p3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 401
    .end local v3           #systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    return-object v3

    .restart local v3       #systemAppInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    move-object v3, v2

    goto :goto_1
.end method

.method private isLocale(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "language"
    .parameter "country"

    .prologue
    .line 434
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 435
    .local v0, l:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter "res_id"
    .parameter "pm"
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p4, prefActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p5, intentFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-ltz p1, :cond_0

    const/4 v8, 0x3

    if-le p1, v8, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-direct {p0, p2, p3, v8}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->getResolveInfos(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v7

    .line 411
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 412
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v7, p3, p4, p5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->getMatchComponentName(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)I

    move-result v6

    .line 413
    .local v6, resolveInfoIndex:I
    if-ltz v6, :cond_3

    .line 414
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 415
    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 416
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    .local v0, appLabel:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v8, p1, v2, v0}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 418
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 419
    .local v4, pkName:Ljava/lang/String;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 420
    .local v1, className:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v3, newIntent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 410
    .end local v0           #appLabel:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #newIntent:Landroid/content/Intent;
    .end local v4           #pkName:Ljava/lang/String;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #resolveInfoIndex:I
    .end local v7           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 426
    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v6       #resolveInfoIndex:I
    .restart local v7       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideTargetArray:[I

    aget v9, v9, p1

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    goto :goto_0
.end method

.method private showAppErrorDialog()V
    .locals 6

    .prologue
    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10406d6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10406d7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 558
    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;-><init>(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 564
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 565
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 566
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 567
    return-void
.end method

.method private usingFacelock()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 489
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mDimHandler:Lcom/android/internal/policy/impl/LockScreen$DimHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1800(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$DimHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$DimHandler;->sendEmptyMessage(I)Z

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 578
    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->resumeBackgroundColor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1900(Lcom/android/internal/policy/impl/LockScreen;)V

    goto :goto_0
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 491
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 498
    const/4 v3, 0x0

    .line 499
    .local v3, intent:Landroid/content/Intent;
    if-ne p2, v4, :cond_4

    .line 502
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->usingFacelock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isInSecurityTimeoutPeriod()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 503
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 515
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 516
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_7

    .line 520
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 521
    const-string v4, "LockScreen"

    const-string v5, "Broadcasting intent for PUK unlock UI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.phone.ACTION_LAUNCH_SIM_UNLOCK_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, broadcastIntent:Landroid/content/Intent;
    const-string v4, "ui_type"

    const-string v5, "PUK_LOCKED_UI"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$1400(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 525
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockScreen;->onPause()V

    .line 542
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 505
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLaunchCameraAfterKeyguardDone(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v2

    .line 534
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "LockScreen"

    const-string v5, "LockScreen threw ActivityNotFoundException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->showAppErrorDialog()V

    goto :goto_1

    .line 508
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    .line 510
    if-ne p2, v5, :cond_5

    .line 511
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    goto :goto_0

    .line 512
    :cond_5
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    .line 513
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    goto/16 :goto_0

    .line 527
    :cond_6
    const-string v4, "LockScreen"

    const-string v5, "PUK unlock screen is not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v4}, Lcom/motorola/android/widget/RunwayLauncher;->reset()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 536
    :catch_1
    move-exception v2

    .line 537
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "LockScreen"

    const-string v5, "LockScreen threw Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->showAppErrorDialog()V

    goto :goto_1

    .line 531
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public ping()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/RunwayLauncher;->reset(Z)V

    .line 594
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    invoke-virtual {v0, p1}, Lcom/motorola/android/widget/RunwayLauncher;->reset(Z)V

    .line 590
    return-void
.end method

.method public updateResources()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/high16 v6, 0x1000

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 446
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v4, prefActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v5, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual {v2, v5, v4, v8}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mIntentList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 451
    const/4 v3, 0x0

    .line 453
    .local v3, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://about:home"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 459
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    :goto_0
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 469
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    move-object v0, p0

    move v1, v7

    .line 478
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->setTargetResources(ILandroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mIsTablet:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "en"

    const-string v1, "US"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->isLocale(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    const-string v1, "Text"

    invoke-virtual {v0, v7, v8, v1}, Lcom/motorola/android/widget/RunwayLauncher;->setTargetResources(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mHideRunwayTarget:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/RunwayLauncher;->setHideRunwayTarget(I)V

    .line 486
    return-void

    .line 463
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.DIAL"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v0, "tel:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 465
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 476
    :cond_2
    const-string v0, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
