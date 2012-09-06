.class Lcom/motorola/Camera/DialogSettingsView$1;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DialogSettingsView;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DialogSettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    .line 604
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 606
    .local v0, action:I
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_2

    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 608
    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 611
    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    .line 636
    :cond_1
    :goto_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_7

    .line 656
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_9

    .line 658
    const/4 v6, 0x0

    .line 659
    .local v6, selection:I
    const/4 v4, 0x0

    .line 661
    .local v4, flag:Z
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectNewTouchTime:J

    .line 662
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectNewTouchTime:J

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectOldTouchTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    .line 664
    const/4 v7, 0x1

    .line 829
    .end local v4           #flag:Z
    .end local v6           #selection:I
    :goto_1
    return v7

    .line 617
    :cond_2
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_4

    .line 619
    const/4 v7, 0x1

    if-eq v0, v7, :cond_3

    if-nez v0, :cond_1

    .line 621
    :cond_3
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mPicResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 624
    :cond_4
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_1

    .line 626
    const/4 v7, 0x1

    if-eq v0, v7, :cond_5

    if-nez v0, :cond_1

    .line 628
    :cond_5
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 629
    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    goto :goto_0

    .line 667
    .restart local v4       #flag:Z
    .restart local v6       #selection:I
    :cond_6
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 669
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 670
    const/4 v4, 0x0

    .line 671
    const/4 v6, 0x0

    .line 680
    :goto_2
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 681
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Face Detection"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v8, Lcom/motorola/Camera/CameraGlobalType;->SETTING_FACE_DETECTION:I

    invoke-interface {v7, v8, v6}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 685
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectNewTouchTime:J

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectOldTouchTime:J

    .line 829
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #flag:Z
    .end local v6           #selection:I
    :cond_7
    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    .line 675
    .restart local v4       #flag:Z
    .restart local v6       #selection:I
    :cond_8
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 676
    const/4 v4, 0x1

    .line 677
    const/4 v6, 0x1

    goto :goto_2

    .line 687
    .end local v4           #flag:Z
    .end local v6           #selection:I
    :cond_9
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_10

    .line 689
    const/4 v6, 0x0

    .line 690
    .restart local v6       #selection:I
    const/4 v4, 0x0

    .line 691
    .restart local v4       #flag:Z
    const/4 v1, 0x0

    .line 693
    .local v1, alertDlg:Landroid/app/AlertDialog;
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagNewTouchTime:J

    .line 694
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagNewTouchTime:J

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagOldTouchTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_a

    .line 696
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 699
    :cond_a
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 701
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 702
    const/4 v6, 0x0

    .line 703
    const/4 v4, 0x0

    .line 713
    :goto_4
    if-eqz v4, :cond_b

    .line 716
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInSecurelyLockedMode()Z

    move-result v7

    if-nez v7, :cond_b

    .line 717
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled()Z

    move-result v7

    if-nez v7, :cond_f

    .line 718
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v7}, Lcom/motorola/Camera/DialogSettingsView;->showPhoneLocationDialog()V

    .line 719
    const/4 v4, 0x0

    .line 728
    :cond_b
    :goto_5
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 729
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 730
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "isLocationOn"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_c

    .line 734
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    const-string v8, "Geo tag setting updated---------------->"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_c
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v8, Lcom/motorola/Camera/CameraGlobalType;->SETTING_GEO_TAG:I

    invoke-interface {v7, v8, v6}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 738
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagNewTouchTime:J

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagOldTouchTime:J

    goto/16 :goto_3

    .line 707
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_d
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 708
    const/4 v4, 0x1

    .line 710
    :cond_e
    const/4 v6, 0x1

    goto :goto_4

    .line 723
    :cond_f
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 740
    .end local v1           #alertDlg:Landroid/app/AlertDialog;
    .end local v4           #flag:Z
    .end local v6           #selection:I
    :cond_10
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_14

    .line 741
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mVStabNewTouchTime:J

    .line 742
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mVStabNewTouchTime:J

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mVStabOldTouchTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_11

    .line 743
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 746
    :cond_11
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 748
    .restart local v4       #flag:Z
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_12

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 750
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v9, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_STABILIZATION:I

    if-nez v4, :cond_13

    const/4 v7, 0x1

    :goto_7
    invoke-interface {v8, v9, v7}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 752
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mVStabNewTouchTime:J

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mVStabOldTouchTime:J

    goto/16 :goto_3

    .line 748
    :cond_12
    const/4 v7, 0x0

    goto :goto_6

    .line 750
    :cond_13
    const/4 v7, 0x0

    goto :goto_7

    .line 754
    .end local v4           #flag:Z
    :cond_14
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_18

    .line 756
    const/4 v6, 0x0

    .line 757
    .restart local v6       #selection:I
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneNewTouchTime:J

    .line 758
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneNewTouchTime:J

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneOldTouchTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_15

    .line 760
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 763
    :cond_15
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 765
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 766
    const/4 v7, 0x0

    sput-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 767
    const/4 v6, 0x0

    .line 776
    :goto_8
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_16

    .line 777
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tone set to:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_16
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v8, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_TONE:I

    invoke-interface {v7, v8, v6}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 782
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 783
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Shutter Tone"

    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 786
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneNewTouchTime:J

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneOldTouchTime:J

    goto/16 :goto_3

    .line 771
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_17
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 772
    const/4 v7, 0x1

    sput-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 773
    const/4 v6, 0x1

    goto :goto_8

    .line 788
    .end local v6           #selection:I
    :cond_18
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_1b

    .line 790
    const/4 v6, 0x0

    .line 791
    .restart local v6       #selection:I
    const/4 v4, 0x0

    .line 793
    .restart local v4       #flag:Z
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimNewTouchTime:J

    .line 794
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimNewTouchTime:J

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimOldTouchTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_19

    .line 796
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 799
    :cond_19
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 801
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 802
    const/4 v6, 0x0

    .line 803
    const/4 v4, 0x0

    .line 812
    :goto_9
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 813
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Shutter Animation"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 814
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 816
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v8, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_ANIMATION:I

    invoke-interface {v7, v8, v6}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 817
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimNewTouchTime:J

    iput-wide v8, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimOldTouchTime:J

    goto/16 :goto_3

    .line 807
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1a
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 808
    const/4 v6, 0x1

    .line 809
    const/4 v4, 0x1

    goto :goto_9

    .line 818
    .end local v4           #flag:Z
    .end local v6           #selection:I
    :cond_1b
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_1c

    .line 820
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-class v8, Lcom/motorola/Camera/DemoActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    .local v2, demoIntent:Landroid/content/Intent;
    const/high16 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 822
    const-string v7, "feature"

    const-string v8, "vstab"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 824
    .end local v2           #demoIntent:Landroid/content/Intent;
    :cond_1c
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "XT910"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MT917"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "XT928"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_1d
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v7, :cond_7

    .line 825
    new-instance v5, Lcom/motorola/Camera/MotoCast;

    invoke-direct {v5}, Lcom/motorola/Camera/MotoCast;-><init>()V

    .line 826
    .local v5, motocast:Lcom/motorola/Camera/MotoCast;
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v7, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/MotoCast;->launchAutoUpload(Landroid/content/Context;)V

    goto/16 :goto_3
.end method
