.class public Lcom/motorola/Camera/DialogSettingsView;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/DialogSettingsView$StorageListAdapter;,
        Lcom/motorola/Camera/DialogSettingsView$VolumeKeyListAdapter;,
        Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;,
        Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECT:I = 0x0

.field private static final KEY_FACE_TRACKING:Ljava/lang/String; = "Face Detection"

.field private static final KEY_SHUTTER_ANIMATION:Ljava/lang/String; = "Shutter Animation"


# instance fields
.field TAG:Ljava/lang/String;

.field TAG1:Ljava/lang/String;

.field final TOUCH_TIME:I

.field private mActivity:Landroid/app/Activity;

.field mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentPictureResolution:Ljava/lang/String;

.field private mCurrentVideoResolution:Ljava/lang/String;

.field mDataAdapter:Lcom/motorola/Camera/DialogListDataAdapter;

.field private mDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogListData;",
            ">;"
        }
    .end annotation
.end field

.field mElementWidth:I

.field mFaceDetectCheckBox:Landroid/widget/CheckBox;

.field mFaceDetectContainer:Landroid/widget/RelativeLayout;

.field mFaceDetectNewTouchTime:J

.field mFaceDetectOldTouchTime:J

.field mGeoCancelListener:Landroid/view/View$OnClickListener;

.field mGeoSetListener:Landroid/view/View$OnClickListener;

.field mGeoTagCheckBox:Landroid/widget/CheckBox;

.field mGeoTagContainer:Landroid/widget/RelativeLayout;

.field mGeoTagNewTouchTime:J

.field mGeoTagOldTouchTime:J

.field private mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mHelpContainer:Landroid/widget/RelativeLayout;

.field mMotoCastContainer:Landroid/widget/RelativeLayout;

.field mPicResAdapter:Landroid/widget/ArrayAdapter;

.field mPicResCancelListener:Landroid/view/View$OnClickListener;

.field mPicResCheckBoxText:Landroid/widget/TextView;

.field mPicResContainer:Landroid/widget/RelativeLayout;

.field mPicResDesc:[Ljava/lang/CharSequence;

.field private mPicResItemSelected:I

.field mPicResNewTouchTime:J

.field mPicResOldTouchTime:J

.field mPicResSelect:Landroid/widget/TextView;

.field mPicResTextContainer:Landroid/widget/LinearLayout;

.field mPicResValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPictureResListAdapter:Landroid/widget/BaseAdapter;

.field private mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field private mPreferencesBack:Landroid/content/SharedPreferences;

.field private mPreferencesCommon:Landroid/content/SharedPreferences;

.field private mPreferencesFront:Landroid/content/SharedPreferences;

.field private mProductModel:Ljava/lang/String;

.field private mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mSettingsView:Landroid/view/ViewGroup;

.field mSettingsViewContainer:Landroid/widget/RelativeLayout;

.field mShutterAnimCheckBox:Landroid/widget/CheckBox;

.field mShutterAnimContainer:Landroid/widget/RelativeLayout;

.field mShutterAnimNewTouchTime:J

.field mShutterAnimOldTouchTime:J

.field mShutterToneCheckBox:Landroid/widget/CheckBox;

.field mShutterToneContainer:Landroid/widget/RelativeLayout;

.field mShutterToneNewTouchTime:J

.field mShutterToneOldTouchTime:J

.field mStorageCancelListener:Landroid/view/View$OnClickListener;

.field private mStorageItemSelected:I

.field mStorageListAdapter:Landroid/widget/BaseAdapter;

.field mStorageRemaining:Landroid/widget/TextView;

.field private mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mStorageSelect:Landroid/widget/TextView;

.field mStorageSelectContainer:Landroid/widget/RelativeLayout;

.field mStorageSelectDesc:[Ljava/lang/String;

.field mStorageTextContainer:Landroid/widget/LinearLayout;

.field mVStabCheckBox:Landroid/widget/CheckBox;

.field mVStabContainer:Landroid/widget/RelativeLayout;

.field mVStabNewTouchTime:J

.field mVStabOldTouchTime:J

.field mVidResAdapter:Landroid/widget/ArrayAdapter;

.field mVidResCancelListener:Landroid/view/View$OnClickListener;

.field mVidResContainer:Landroid/widget/RelativeLayout;

.field mVidResDesc:[Ljava/lang/CharSequence;

.field mVidResDialog:Landroid/app/AlertDialog;

.field private mVidResItemSelected:I

.field mVidResNewTouchTime:J

.field mVidResOldTouchTime:J

.field mVidResSelect:Landroid/widget/TextView;

.field mVidResTextContainer:Landroid/widget/LinearLayout;

.field mVidResValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVideoResListAdapter:Landroid/widget/BaseAdapter;

.field private mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mVolKeyCancelListener:Landroid/view/View$OnClickListener;

.field mVolKeyOptions:[Ljava/lang/String;

.field mVolumeFuncContainer:Landroid/widget/RelativeLayout;

.field mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

.field private mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mVolumeKeySelect:Landroid/widget/TextView;

.field parentView:Landroid/view/ViewGroup;

.field settingsDialogClickListener:Landroid/view/View$OnClickListener;

.field settingsDialogSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

.field private storageRemainingText:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;ILandroid/app/Activity;I)V
    .locals 12
    .parameter "context"
    .parameter "v"
    .parameter
    .parameter "interfaceParam"
    .parameter "title"
    .parameter "selectedPosition"
    .parameter "a"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogListData;",
            ">;",
            "Lcom/motorola/Camera/DialogCallbackInterface;",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, arraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/DialogListData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v8, "DialogSettingsView"

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    .line 59
    const-string v8, "DialogSettingsView1"

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG1:Ljava/lang/String;

    .line 107
    const/16 v8, 0x64

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TOUCH_TIME:I

    .line 121
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    .line 123
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    .line 124
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageItemSelected:I

    .line 125
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    .line 126
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    .line 142
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    .line 599
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$1;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$1;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    .line 903
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$2;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$2;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    .line 1119
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$3;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$3;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1415
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$4;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$4;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageCancelListener:Landroid/view/View$OnClickListener;

    .line 1424
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$5;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$5;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyCancelListener:Landroid/view/View$OnClickListener;

    .line 1433
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$6;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$6;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCancelListener:Landroid/view/View$OnClickListener;

    .line 1442
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$7;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$7;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResCancelListener:Landroid/view/View$OnClickListener;

    .line 1451
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$8;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$8;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoCancelListener:Landroid/view/View$OnClickListener;

    .line 1465
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$9;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$9;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoSetListener:Landroid/view/View$OnClickListener;

    .line 160
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/motorola/Camera/DialogSettingsView;->parentView:Landroid/view/ViewGroup;

    .line 163
    iput-object p3, p0, Lcom/motorola/Camera/DialogSettingsView;->mDataArray:Ljava/util/ArrayList;

    .line 164
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 166
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;

    .line 167
    move/from16 v0, p8

    iput v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    .line 170
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 171
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030027

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 173
    .local v4, settingsviewlayout:Landroid/view/View;
    const v8, 0x7f0d0081

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 174
    .local v7, text:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 176
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    const v8, 0x7f0d0095

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    .line 181
    const v8, 0x7f0d009a

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    .line 182
    const v8, 0x7f0d009f

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    .line 183
    const v8, 0x7f0d00ad

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    .line 184
    const v8, 0x7f0d00b2

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    .line 185
    const v8, 0x7f0d0080

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mSettingsViewContainer:Landroid/widget/RelativeLayout;

    .line 188
    const v8, 0x7f0d0084

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    .line 189
    const v8, 0x7f0d0085

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResTextContainer:Landroid/widget/LinearLayout;

    .line 190
    const v8, 0x7f0d0088

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    .line 191
    const v8, 0x7f0d0089

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    .line 193
    const v8, 0x7f0d0090

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeFuncContainer:Landroid/widget/RelativeLayout;

    .line 194
    const v8, 0x7f0d00a7

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    .line 195
    const v8, 0x7f0d0094

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    .line 196
    const v8, 0x7f0d0099

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    .line 197
    const v8, 0x7f0d009e

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    .line 198
    const v8, 0x7f0d00a3

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "XT910"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "MT917"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "XT928"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 200
    :cond_1
    const v8, 0x7f0d008c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    .line 202
    :cond_2
    const v8, 0x7f0d00ac

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    .line 203
    const v8, 0x7f0d00b1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    .line 205
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    const v8, 0x7f0d00a8

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    .line 209
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "XT910"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "MT917"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "XT928"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    :cond_3
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    :cond_4
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResTextContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeFuncContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v9, 0x7f07001e

    const v10, 0x1090008

    invoke-static {v8, v9, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResAdapter:Landroid/widget/ArrayAdapter;

    .line 233
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResAdapter:Landroid/widget/ArrayAdapter;

    const v9, 0x1090009

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 235
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v9, 0x7f070021

    const v10, 0x1090008

    invoke-static {v8, v9, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResAdapter:Landroid/widget/ArrayAdapter;

    .line 238
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResAdapter:Landroid/widget/ArrayAdapter;

    const v9, 0x1090009

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 241
    const v8, 0x7f0d0087

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    .line 242
    const v8, 0x7f0d008b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    .line 243
    const v8, 0x7f0d0093

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeySelect:Landroid/widget/TextView;

    .line 244
    const v8, 0x7f0d00aa

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    .line 245
    const v8, 0x7f0d00ab

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    .line 247
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 249
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "com.motorola.Camera_preferences"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    .line 252
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "com.motorola.Camera_preferences_back"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesBack:Landroid/content/SharedPreferences;

    .line 255
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "com.motorola.Camera_preferences_front"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesFront:Landroid/content/SharedPreferences;

    .line 258
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isFaceDetectionEnable()Z

    move-result v8

    if-nez v8, :cond_5

    .line 260
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 261
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 264
    :cond_5
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Geocoder.isPresent() is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v8

    if-nez v8, :cond_6

    .line 267
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 268
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    :cond_6
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 273
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    invoke-direct {p0}, Lcom/motorola/Camera/DialogSettingsView;->calculateRemainingSpace()V

    .line 309
    sget-boolean v8, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v8, :cond_1a

    .line 311
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 312
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 313
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 314
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 315
    const v8, 0x7f0d00a9

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 316
    .local v6, storageTitleText:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0135

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    if-eqz v6, :cond_7

    const v8, -0x777778

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    :cond_7
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    :cond_8
    :goto_0
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 355
    const v8, 0x7f0d00ac

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 356
    .local v2, mShutterToneContainer:Landroid/widget/RelativeLayout;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 359
    .end local v2           #mShutterToneContainer:Landroid/widget/RelativeLayout;
    :cond_9
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 360
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    const-string v10, "Face Detection"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 362
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    const-string v10, "isLocationOn"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 364
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    if-nez v8, :cond_a

    .line 365
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 369
    :cond_a
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "XT910"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "MT917"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    const-string v9, "XT928"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 370
    :cond_b
    new-instance v3, Lcom/motorola/Camera/MotoCast;

    invoke-direct {v3}, Lcom/motorola/Camera/MotoCast;-><init>()V

    .line 371
    .local v3, motocast:Lcom/motorola/Camera/MotoCast;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Lcom/motorola/Camera/MotoCast;->isPackageAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 372
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 376
    .end local v3           #motocast:Lcom/motorola/Camera/MotoCast;
    :cond_c
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isVideoStabilizationSupported()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 377
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoStabilization()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 381
    :cond_d
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v8

    if-nez v8, :cond_e

    .line 383
    invoke-direct {p0, v4}, Lcom/motorola/Camera/DialogSettingsView;->disableVstabContainer(Landroid/view/View;)V

    .line 387
    :cond_e
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPictureResolutionValues()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResValue:Ljava/util/List;

    .line 388
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPictureResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResDesc:[Ljava/lang/CharSequence;

    .line 389
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentPictureResolution:Ljava/lang/String;

    .line 390
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_f

    .line 391
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrentPictureResolution:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentPictureResolution:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_f
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResValue:Ljava/util/List;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentPictureResolution:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    .line 394
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_10

    .line 395
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPicResItemSelected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_10
    iget v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    if-ltz v8, :cond_11

    iget v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResDesc:[Ljava/lang/CharSequence;

    array-length v9, v9

    if-ge v8, v9, :cond_11

    .line 398
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResDesc:[Ljava/lang/CharSequence;

    iget v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_11
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_12

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_12

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 406
    :cond_12
    invoke-direct {p0, v4}, Lcom/motorola/Camera/DialogSettingsView;->disablePicContainer(Landroid/view/View;)V

    .line 410
    :cond_13
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionValues()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResValue:Ljava/util/List;

    .line 411
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    .line 412
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyOptions:[Ljava/lang/String;

    .line 413
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeySelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyOptions:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentVideoResolution:Ljava/lang/String;

    .line 416
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_14

    .line 417
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrentVideoResolution:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentVideoResolution:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_14
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResValue:Ljava/util/List;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentVideoResolution:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    .line 420
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_15

    .line 421
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mVidResItemSelected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_15
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    array-length v8, v8

    if-lez v8, :cond_16

    .line 424
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    iget v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_16
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_17

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_17

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_17

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_18

    .line 431
    :cond_17
    invoke-direct {p0, v4}, Lcom/motorola/Camera/DialogSettingsView;->disableVidContainer(Landroid/view/View;)V

    .line 436
    :cond_18
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isVideoStabilizationDemoSupported()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 437
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 440
    :cond_19
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPictureResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;-><init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPictureResListAdapter:Landroid/widget/BaseAdapter;

    .line 441
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;-><init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVideoResListAdapter:Landroid/widget/BaseAdapter;

    .line 442
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$VolumeKeyListAdapter;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070024

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/Camera/DialogSettingsView$VolumeKeyListAdapter;-><init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

    .line 443
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$StorageListAdapter;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectDesc:[Ljava/lang/String;

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/Camera/DialogSettingsView$StorageListAdapter;-><init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageListAdapter:Landroid/widget/BaseAdapter;

    .line 445
    return-void

    .line 324
    .end local v6           #storageTitleText:Landroid/widget/TextView;
    :cond_1a
    const v8, 0x7f0d00a9

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 325
    .restart local v6       #storageTitleText:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0134

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectDesc:[Ljava/lang/String;

    .line 328
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectDesc:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalStorageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 330
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectDesc:[Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalStorageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 332
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectDesc:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v8

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageItemSelected:I

    .line 334
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {}, Lcom/motorola/Camera/CameraGlobalTools;->currentStorageState()I

    move-result v5

    .line 337
    .local v5, storage:I
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_1b

    .line 338
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentStorageState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1b
    const/4 v8, 0x2

    if-eq v5, v8, :cond_1c

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    .line 342
    :cond_1c
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    if-eqz v6, :cond_1d

    const v8, -0x777778

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    :cond_1d
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 346
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 347
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 348
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/DialogSettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    return v0
.end method

.method static synthetic access$1002(Lcom/motorola/Camera/DialogSettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/DialogSettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    return v0
.end method

.method static synthetic access$1102(Lcom/motorola/Camera/DialogSettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    return p1
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/DialogSettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageItemSelected:I

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/Camera/DialogSettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageItemSelected:I

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/Camera/DialogSettingsView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/DialogSettingsView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mProductModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/Camera/DialogSettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method private calculateRemainingSpace()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    .line 559
    sget-boolean v5, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v5, :cond_0

    move v2, v4

    .line 560
    .local v2, numberOfStorageDevices:I
    :goto_0
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    .line 561
    .local v0, currentStorage:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    aget-boolean v6, v0, v1

    invoke-static {v5, v6}, Lcom/motorola/Camera/CameraGlobalTools;->getFreeSpaceAsFormattedString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0166

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, storageText:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    aput-object v3, v4, v1

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 559
    .end local v0           #currentStorage:[Z
    .end local v1           #i:I
    .end local v2           #numberOfStorageDevices:I
    .end local v3           #storageText:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 565
    .restart local v0       #currentStorage:[Z
    .restart local v1       #i:I
    .restart local v2       #numberOfStorageDevices:I
    :cond_1
    return-void

    .line 560
    :array_0
    .array-data 0x1
        0x1t
        0x0t
    .end array-data
.end method

.method private calculateRemainingStorageInPhotosAndVideos()V
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 545
    sget-boolean v9, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v9, :cond_0

    move v2, v7

    .line 546
    .local v2, numberOfStorageDevices:I
    :goto_0
    new-array v0, v7, [Z

    fill-array-data v0, :array_0

    .line 547
    .local v0, currentStorage:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 548
    const-string v5, ""

    .line 549
    .local v5, storageText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 550
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v7

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, picRes:Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/Integer;

    aget-boolean v9, v0, v1

    invoke-static {v3, v9}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, picsLeftText:Ljava/lang/String;
    aget-boolean v7, v0, v1

    invoke-static {v7}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v7

    int-to-long v9, v7

    invoke-static {v9, v10}, Lcom/motorola/Camera/CameraGlobalTools;->format2Time(J)Ljava/lang/String;

    move-result-object v6

    .line 553
    .local v6, vidTimeLeftText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Photos / "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Videos)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    aput-object v5, v7, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #currentStorage:[Z
    .end local v1           #i:I
    .end local v2           #numberOfStorageDevices:I
    .end local v3           #picRes:Ljava/lang/String;
    .end local v4           #picsLeftText:Ljava/lang/String;
    .end local v5           #storageText:Ljava/lang/String;
    .end local v6           #vidTimeLeftText:Ljava/lang/String;
    :cond_0
    move v2, v8

    .line 545
    goto :goto_0

    .line 550
    .restart local v0       #currentStorage:[Z
    .restart local v1       #i:I
    .restart local v2       #numberOfStorageDevices:I
    .restart local v5       #storageText:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 556
    .end local v5           #storageText:Ljava/lang/String;
    :cond_2
    return-void

    .line 546
    :array_0
    .array-data 0x1
        0x1t
        0x0t
    .end array-data
.end method

.method private disablePicContainer(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, -0x777778

    const/4 v2, 0x0

    .line 509
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 510
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 511
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 513
    const v1, 0x7f0d0086

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 514
    .local v0, picReslnText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    return-void
.end method

.method private disableVidContainer(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, -0x777778

    const/4 v2, 0x0

    .line 520
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 521
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 522
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 523
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 524
    const v1, 0x7f0d008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 525
    .local v0, vidReslnText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    return-void
.end method

.method private disableVstabContainer(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, -0x777778

    const/4 v3, 0x0

    .line 530
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 531
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 532
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 533
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 534
    const v2, 0x7f0d00a1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 535
    .local v1, vstabText:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 538
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 539
    const v2, 0x7f0d00a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 540
    .local v0, helpText:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
    :cond_1
    return-void
.end method


# virtual methods
.method public closeSettingSecondaryDialog()V
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1373
    :cond_0
    return-void
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 1407
    const/4 v0, 0x0

    .line 1408
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1410
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getBottom()I

    move-result v0

    .line 1412
    :cond_0
    return v0
.end method

.method public getChildWidth()I
    .locals 4

    .prologue
    .line 477
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 478
    .local v0, maxWidth:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 490
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 494
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 496
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 498
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 500
    :cond_4
    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getLeft()I

    move-result v0

    .line 1382
    :cond_0
    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 1397
    const/4 v0, 0x0

    .line 1398
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getRight()I

    move-result v0

    .line 1402
    :cond_0
    return v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 1387
    const/4 v0, 0x0

    .line 1388
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getTop()I

    move-result v0

    .line 1392
    :cond_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mSettingsViewContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public notifyVideoResolutionSelected(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 449
    iput p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    .line 450
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVidResItemSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method

.method public showPhoneLocationDialog()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 866
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 868
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 869
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 870
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "isLocationOn"

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 871
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    .end local v9           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-nez v0, :cond_1

    .line 877
    new-instance v0, Lcom/motorola/Camera/RotateDialogController;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f030026

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 880
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 882
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b007e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoSetListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0038

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoCancelListener:Landroid/view/View$OnClickListener;

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 895
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 896
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    goto :goto_0
.end method
