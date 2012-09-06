.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mMessageResId:I

.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 542
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 549
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "statusResId"

    .prologue
    .line 554
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 556
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 557
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 558
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 570
    const v4, 0x1090041

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 572
    .local v3, v:Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 573
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 579
    .local v1, messageView:Landroid/widget/TextView;
    const v4, 0x102027b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 581
    .local v2, statusView:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    if-nez v4, :cond_0

    .line 582
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 594
    return-object v3

    .line 584
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
