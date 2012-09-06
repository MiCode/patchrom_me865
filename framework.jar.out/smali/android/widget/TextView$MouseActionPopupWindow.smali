.class Landroid/widget/TextView$MouseActionPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MouseActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900a5


# instance fields
.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 10847
    iput-object p1, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10847
    invoke-direct {p0, p1}, Landroid/widget/TextView$MouseActionPopupWindow;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3
    .parameter "positionY"

    .prologue
    .line 10959
    iget-object v2, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 10960
    .local v1, height:I
    iget-object v2, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TextView;->access$6900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 10961
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .locals 4

    .prologue
    .line 10857
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 10859
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 10860
    return-void
.end method

.method protected getTextOffset()I
    .locals 3

    .prologue
    .line 10949
    iget-object v0, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLastDownPositionX:F
    invoke-static {v1}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mLastDownPositionY:F
    invoke-static {v2}, Landroid/widget/TextView;->access$6800(Landroid/widget/TextView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 10954
    iget-object v0, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const v5, 0x10900a5

    .line 10864
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10865
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10866
    iput-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 10867
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x10805b9

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 10870
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 10873
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10876
    .local v2, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 10877
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10878
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10879
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v4, 0x1040001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10880
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10882
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 10883
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10884
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10885
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v4, 0x1040003

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10886
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10889
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 10890
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10891
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10892
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v4, 0x104000b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10893
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10895
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 10896
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10897
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10898
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v4, 0x104000d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 10899
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10900
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 10921
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 10922
    .local v1, selectionStart:I
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 10923
    .local v0, selectionEnd:I
    if-le v1, v0, :cond_0

    if-ltz v0, :cond_0

    .line 10924
    move v2, v1

    .line 10925
    .local v2, tmp:I
    move v1, v0

    .line 10926
    move v0, v2

    .line 10927
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10929
    .end local v2           #tmp:I
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10930
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v4, 0x102001f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10931
    invoke-virtual {p0}, Landroid/widget/TextView$MouseActionPopupWindow;->hide()V

    .line 10945
    :cond_1
    :goto_0
    return-void

    .line 10933
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10934
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v4, 0x1020021

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10935
    invoke-virtual {p0}, Landroid/widget/TextView$MouseActionPopupWindow;->hide()V

    goto :goto_0

    .line 10937
    :cond_3
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10938
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v4, 0x1020020

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10939
    invoke-virtual {p0}, Landroid/widget/TextView$MouseActionPopupWindow;->hide()V

    goto :goto_0

    .line 10941
    :cond_4
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v3}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10942
    iget-object v3, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    const v4, 0x1020022

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 10943
    invoke-virtual {p0}, Landroid/widget/TextView$MouseActionPopupWindow;->hide()V

    goto :goto_0
.end method

.method public show()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 10904
    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$5300(Landroid/widget/TextView;)Z

    move-result v2

    .line 10905
    .local v2, canPaste:Z
    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$5200(Landroid/widget/TextView;)Z

    move-result v0

    .line 10906
    .local v0, canCopy:Z
    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCut()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$5100(Landroid/widget/TextView;)Z

    move-result v1

    .line 10907
    .local v1, canCut:Z
    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canSelectText()Z
    invoke-static {v4}, Landroid/widget/TextView;->access$6600(Landroid/widget/TextView;)Z

    move-result v3

    .line 10909
    .local v3, canSelectAll:Z
    iget-object v7, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10910
    iget-object v7, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10911
    iget-object v7, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10912
    iget-object v4, p0, Landroid/widget/TextView$MouseActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10914
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 10917
    :goto_4
    return-void

    :cond_0
    move v4, v6

    .line 10909
    goto :goto_0

    :cond_1
    move v4, v6

    .line 10910
    goto :goto_1

    :cond_2
    move v4, v6

    .line 10911
    goto :goto_2

    :cond_3
    move v5, v6

    .line 10912
    goto :goto_3

    .line 10916
    :cond_4
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    goto :goto_4
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 10965
    iget-object v1, p0, Landroid/widget/TextView$MouseActionPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    .line 10966
    .local v0, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/widget/TextView$MouseActionPopupWindow;->updatePosition(IIZZ)V

    .line 10967
    return-void
.end method
