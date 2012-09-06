.class public Lcom/motorola/Camera/ProgressSettingView;
.super Ljava/lang/Object;
.source "ProgressSettingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field mContext:Landroid/content/Context;

.field mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

.field private mContrastLeftMargin:I

.field mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

.field mContrastValue:Landroid/widget/TextView;

.field private mCurrentISO:Ljava/lang/String;

.field private mCurrentOrientation:I

.field mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

.field mExposureLeftIcon:Landroid/widget/ImageView;

.field private mExposureLeftMargin:I

.field mExposureRightIcon:Landroid/widget/ImageView;

.field mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

.field mExposureValue:Landroid/widget/TextView;

.field mISOButton:Landroid/widget/Button;

.field mISOCancelListener:Landroid/view/View$OnClickListener;

.field mISOItemSelected:I

.field mISOListAdapter:Landroid/widget/BaseAdapter;

.field private mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mISOTextContainer:Landroid/widget/RelativeLayout;

.field mISOTextValue:Landroid/widget/TextView;

.field mISOValueArray:[Ljava/lang/String;

.field private mISOValuesEntries:[Ljava/lang/CharSequence;

.field mParentView:Landroid/view/ViewGroup;

.field mResetButton:Landroid/widget/Button;

.field mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

.field private mSaturationLeftMargin:I

.field mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

.field mSaturationValue:Landroid/widget/TextView;

.field mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

.field mViewContainer:Landroid/widget/RelativeLayout;

.field progressBarButtonListener:Landroid/view/View$OnClickListener;

.field progressBarTouchListener:Landroid/view/View$OnTouchListener;

.field resetListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/motorola/Camera/DialogCallbackInterface;Landroid/app/Activity;I)V
    .locals 10
    .parameter "context"
    .parameter "v"
    .parameter "interfaceParam"
    .parameter "a"
    .parameter "orientation"

    .prologue
    const v9, 0x7f0b0177

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10e

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v4, "ProgressSettingsView"

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    .line 42
    iput v6, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentOrientation:I

    .line 71
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "auto"

    aput-object v5, v4, v6

    const-string v5, "100"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "400"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "800"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "1200"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "1600"

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValueArray:[Ljava/lang/String;

    .line 72
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValuesEntries:[Ljava/lang/CharSequence;

    .line 265
    new-instance v4, Lcom/motorola/Camera/ProgressSettingView$1;

    invoke-direct {v4, p0}, Lcom/motorola/Camera/ProgressSettingView$1;-><init>(Lcom/motorola/Camera/ProgressSettingView;)V

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    .line 300
    new-instance v4, Lcom/motorola/Camera/ProgressSettingView$2;

    invoke-direct {v4, p0}, Lcom/motorola/Camera/ProgressSettingView$2;-><init>(Lcom/motorola/Camera/ProgressSettingView;)V

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v4, Lcom/motorola/Camera/ProgressSettingView$3;

    invoke-direct {v4, p0}, Lcom/motorola/Camera/ProgressSettingView$3;-><init>(Lcom/motorola/Camera/ProgressSettingView;)V

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->resetListener:Landroid/view/View$OnClickListener;

    .line 375
    new-instance v4, Lcom/motorola/Camera/ProgressSettingView$4;

    invoke-direct {v4, p0}, Lcom/motorola/Camera/ProgressSettingView$4;-><init>(Lcom/motorola/Camera/ProgressSettingView;)V

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 421
    new-instance v4, Lcom/motorola/Camera/ProgressSettingView$5;

    invoke-direct {v4, p0}, Lcom/motorola/Camera/ProgressSettingView$5;-><init>(Lcom/motorola/Camera/ProgressSettingView;)V

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOCancelListener:Landroid/view/View$OnClickListener;

    .line 81
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/motorola/Camera/ProgressSettingView;->mParentView:Landroid/view/ViewGroup;

    .line 83
    iput-object p3, p0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 84
    iput-object p4, p0, Lcom/motorola/Camera/ProgressSettingView;->mActivity:Landroid/app/Activity;

    .line 85
    iput p5, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentOrientation:I

    .line 88
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 89
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030023

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, viewLayout:Landroid/view/View;
    const v4, 0x7f0d005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/Camera/widget/SliderBarWidget;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    .line 92
    const v4, 0x7f0d0066

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/Camera/widget/SliderBarWidget;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    .line 93
    const v4, 0x7f0d006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/Camera/widget/SliderBarWidget;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    .line 95
    const v4, 0x7f0d005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/Camera/widget/RotateLayout;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    .line 96
    const v4, 0x7f0d0065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/Camera/widget/RotateLayout;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    .line 97
    const v4, 0x7f0d006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/motorola/Camera/widget/RotateLayout;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    .line 99
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 100
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 101
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 103
    const v4, 0x7f0d005c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftIcon:Landroid/widget/ImageView;

    .line 104
    const v4, 0x7f0d005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureRightIcon:Landroid/widget/ImageView;

    .line 106
    const v4, 0x7f0d0060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureValue:Landroid/widget/TextView;

    .line 107
    const v4, 0x7f0d0067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastValue:Landroid/widget/TextView;

    .line 108
    const v4, 0x7f0d006e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationValue:Landroid/widget/TextView;

    .line 110
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/widget/SliderBarWidget;->setProgressChangeListener(Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;)V

    .line 111
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/widget/SliderBarWidget;->setProgressChangeListener(Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;)V

    .line 112
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/widget/SliderBarWidget;->setProgressChangeListener(Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;)V

    .line 114
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureRightIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureRightIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mViewContainer:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v4}, Lcom/motorola/Camera/widget/SliderBarWidget;->getLeft()I

    move-result v4

    iput v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I

    .line 122
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v4}, Lcom/motorola/Camera/widget/SliderBarWidget;->getLeft()I

    move-result v4

    iput v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastLeftMargin:I

    .line 123
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v4}, Lcom/motorola/Camera/widget/SliderBarWidget;->getLeft()I

    move-result v4

    iput v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationLeftMargin:I

    .line 124
    invoke-virtual {p0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v1, 0x1

    .local v1, ind:I
    :goto_0
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValueArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValueArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValuesEntries:[Ljava/lang/CharSequence;

    .line 134
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValuesEntries:[Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 137
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentISOValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;

    .line 139
    const-string v4, "tnrf63"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentISO is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const v4, 0x7f0d006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextContainer:Landroid/widget/RelativeLayout;

    .line 141
    const v4, 0x7f0d0072

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextValue:Landroid/widget/TextView;

    .line 142
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v4, 0x7f0d0070

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOButton:Landroid/widget/Button;

    .line 144
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v4, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValuesEntries:[Ljava/lang/CharSequence;

    invoke-direct {v4, p0, v5, v6}, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;-><init>(Lcom/motorola/Camera/ProgressSettingView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOListAdapter:Landroid/widget/BaseAdapter;

    .line 147
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValueArray:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 149
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOValueArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    iput v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOItemSelected:I

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextValue:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_2
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 164
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextContainer:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 167
    :cond_2
    const v4, 0x7f0d0074

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mResetButton:Landroid/widget/Button;

    .line 168
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mResetButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->resetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void

    .line 147
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_4
    iget-object v4, p0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextValue:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/motorola/Camera/ProgressSettingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I

    return p1
.end method

.method static synthetic access$102(Lcom/motorola/Camera/ProgressSettingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastLeftMargin:I

    return p1
.end method

.method static synthetic access$202(Lcom/motorola/Camera/ProgressSettingView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationLeftMargin:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/Camera/ProgressSettingView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/Camera/ProgressSettingView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/Camera/ProgressSettingView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/Camera/ProgressSettingView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/Camera/ProgressSettingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method


# virtual methods
.method public closeSettingSecondaryDialog()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 495
    :cond_0
    return-void
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getBottom()I

    move-result v0

    .line 534
    :cond_0
    return v0
.end method

.method public getChildWidth()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getLeft()I

    move-result v0

    .line 504
    :cond_0
    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getRight()I

    move-result v0

    .line 524
    :cond_0
    return v0
.end method

.method public getSliderProgress(I)I
    .locals 2
    .parameter "sliderID"

    .prologue
    .line 206
    const/4 v0, -0x1

    .line 207
    .local v0, returevalue:I
    packed-switch p1, :pswitch_data_0

    .line 220
    :goto_0
    return v0

    .line 209
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderPosition()I

    move-result v0

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderPosition()I

    move-result v0

    .line 213
    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderPosition()I

    move-result v0

    .line 216
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getTop()I

    move-result v0

    .line 514
    :cond_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mViewContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public realignValue()V
    .locals 5

    .prologue
    .line 242
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 243
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExposureValue Realigned Left MArgin - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 251
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastLeftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContrastValue Realigned Left MArgin - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastLeftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 258
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationLeftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSaturationValue Realigned Left MArgin - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationLeftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    return-void
.end method

.method public setSliderProgress(II)V
    .locals 2
    .parameter "sliderID"
    .parameter "progress"

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, p2}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 187
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v0}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I

    .line 188
    invoke-virtual {p0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, p2}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 192
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0}, Lcom/motorola/Camera/widget/SliderBarWidget;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastLeftMargin:I

    .line 193
    invoke-virtual {p0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, p2}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 197
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v0}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationLeftMargin:I

    .line 198
    invoke-virtual {p0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1
    .parameter "sliderID"
    .parameter "text"

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mExposureValue:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mContrastValue:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationValue:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
