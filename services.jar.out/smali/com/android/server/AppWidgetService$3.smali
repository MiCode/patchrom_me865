.class Lcom/android/server/AppWidgetService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1533
    .local v3, action:Ljava/lang/String;
    const-string v18, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    const-string v18, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1536
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 1537
    .local v15, revised:Ljava/util/Locale;
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1539
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1542
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1544
    .local v2, N:I
    add-int/lit8 v9, v2, -0x1

    .local v9, i:I
    :goto_1
    if-ltz v9, :cond_3

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppWidgetService$Provider;

    .line 1546
    .local v12, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v0, v12, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1547
    .local v14, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1544
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 1549
    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1550
    monitor-exit v19

    goto/16 :goto_0

    .end local v2           #N:I
    .end local v9           #i:I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 1552
    :cond_4
    sget-boolean v18, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v18, :cond_0

    .line 1553
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1554
    .local v7, config:Landroid/content/res/Configuration;
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0xf

    .line 1555
    .local v16, screenLayout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/AppWidgetService;->mScreenLayout:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/AppWidgetService;->mScreenLayout:I

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1558
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->updateProvidersOnLayoutChangedLocked()V

    .line 1559
    monitor-exit v19

    goto/16 :goto_0

    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v18

    .line 1564
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v15           #revised:Ljava/util/Locale;
    .end local v16           #screenLayout:I
    :cond_5
    const/4 v4, 0x0

    .line 1565
    .local v4, added:Z
    const/4 v6, 0x0

    .line 1566
    .local v6, changed:Z
    const/4 v13, 0x0

    .line 1567
    .local v13, pkgList:[Ljava/lang/String;
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1568
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1569
    const/4 v4, 0x1

    .line 1586
    :goto_2
    if-eqz v13, :cond_0

    array-length v0, v13

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1589
    if-nez v4, :cond_6

    if-eqz v6, :cond_c

    .line 1590
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1591
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1592
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1593
    .local v8, extras:Landroid/os/Bundle;
    if-nez v6, :cond_7

    if-eqz v8, :cond_a

    const-string v18, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1595
    :cond_7
    move-object v5, v13

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v11, :cond_b

    aget-object v14, v5, v10

    .line 1597
    .restart local v14       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1595
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1570
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_8
    const-string v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1571
    const-string v18, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1572
    const/4 v4, 0x0

    goto :goto_2

    .line 1574
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 1575
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_0

    .line 1578
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 1579
    .restart local v14       #pkgName:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 1582
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .end local v13           #pkgList:[Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v14, v13, v18

    .line 1583
    .restart local v13       #pkgList:[Ljava/lang/String;
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1584
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_2

    .line 1601
    .end local v14           #pkgName:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .restart local v8       #extras:Landroid/os/Bundle;
    :cond_a
    move-object v5, v13

    .restart local v5       #arr$:[Ljava/lang/String;
    :try_start_3
    array-length v11, v5

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_4
    if-ge v10, v11, :cond_b

    aget-object v14, v5, v10

    .line 1602
    .restart local v14       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1601
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1605
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1606
    monitor-exit v19

    goto/16 :goto_0

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :catchall_2
    move-exception v18

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v18

    .line 1608
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1609
    .restart local v8       #extras:Landroid/os/Bundle;
    if-eqz v8, :cond_d

    const-string v18, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1612
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1613
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    .line 1614
    move-object v5, v13

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v11, v5

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_5
    if-ge v10, v11, :cond_e

    aget-object v14, v5, v10

    .line 1615
    .restart local v14       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$3;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1614
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1618
    .end local v14           #pkgName:Ljava/lang/String;
    :cond_e
    monitor-exit v19

    goto/16 :goto_0

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :catchall_3
    move-exception v18

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v18
.end method
