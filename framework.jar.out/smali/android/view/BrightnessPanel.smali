.class public Landroid/view/BrightnessPanel;
.super Landroid/os/Handler;
.source "BrightnessPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final FLAG_SHOW_UI:I = 0x1

.field private static final FREE_DELAY:I = 0x2710

.field private static final MAX_BRIGHTNESS_LEVEL:I = 0x64

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x0

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x2

.field private static final TIMEOUT_DELAY:I = 0xbb8


# instance fields
.field private final mDialog:Landroid/app/Dialog;

.field private mGroup:Landroid/view/ViewGroup;

.field private mSeekbarView:Landroid/widget/SeekBar;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109002c

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    .line 42
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    const v4, 0x102026a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    .line 43
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 44
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 46
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 49
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    new-instance v4, Landroid/view/BrightnessPanel$1;

    invoke-direct {v4, p0}, Landroid/view/BrightnessPanel$1;-><init>(Landroid/view/BrightnessPanel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    new-instance v3, Landroid/view/BrightnessPanel$2;

    invoke-direct {v3, p0, p1}, Landroid/view/BrightnessPanel$2;-><init>(Landroid/view/BrightnessPanel;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    .line 67
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 69
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 70
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    new-instance v4, Landroid/view/BrightnessPanel$3;

    invoke-direct {v4, p0}, Landroid/view/BrightnessPanel$3;-><init>(Landroid/view/BrightnessPanel;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 76
    .local v2, window:Landroid/view/Window;
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 77
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 81
    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    const v3, 0x40028

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->forceTimeout()V

    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 149
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 144
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/BrightnessPanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 130
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/BrightnessPanel;->onBrightnessChanged(II)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onBrightnessChanged(II)V
    .locals 3
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    const/4 v0, 0x1

    .line 103
    if-ne p1, v0, :cond_0

    .line 104
    invoke-virtual {p0, p1, p2}, Landroid/view/BrightnessPanel;->onShowBrightnessChanged(II)V

    .line 106
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/BrightnessPanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    .line 110
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    .line 156
    return-void
.end method

.method protected onShowBrightnessChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    .line 114
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 115
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 117
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 159
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 162
    return-void
.end method

.method public postBrightnessChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/BrightnessPanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 97
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/BrightnessPanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
