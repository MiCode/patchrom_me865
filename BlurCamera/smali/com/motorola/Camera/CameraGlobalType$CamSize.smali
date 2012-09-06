.class public Lcom/motorola/Camera/CameraGlobalType$CamSize;
.super Ljava/lang/Object;
.source "CameraGlobalType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraGlobalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamSize"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mHeight:I

.field mLock:Z

.field mSize:F

.field mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 661
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 656
    iput v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 658
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 662
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/CameraGlobalType$CamSize;->update(Ljava/lang/String;)V

    .line 663
    return-void
.end method


# virtual methods
.method public getDescpiption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    return v0
.end method

.method public getLock()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    return v0
.end method

.method public update(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v5, 0x4100

    const/high16 v4, 0x40a0

    const/16 v3, 0x2d0

    const/high16 v2, 0x3f40

    const/4 v1, 0x0

    .line 748
    iput p1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 749
    iput p2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 751
    const/16 v0, 0xcc0

    if-ne p1, v0, :cond_0

    const/16 v0, 0x720

    if-ne p2, v0, :cond_0

    .line 753
    const-string v0, "EightMPW"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 754
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 755
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 757
    :cond_0
    const/16 v0, 0xcc0

    if-ne p1, v0, :cond_1

    const/16 v0, 0x990

    if-ne p2, v0, :cond_1

    .line 759
    const-string v0, "EightMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 760
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 761
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 763
    :cond_1
    const/16 v0, 0xa20

    if-ne p1, v0, :cond_2

    const/16 v0, 0x5b0

    if-ne p2, v0, :cond_2

    .line 764
    const-string v0, "FiveMPW"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 765
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 766
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 816
    :goto_0
    return-void

    .line 767
    :cond_2
    const/16 v0, 0xa20

    if-ne p1, v0, :cond_3

    const/16 v0, 0x790

    if-ne p2, v0, :cond_3

    .line 768
    const-string v0, "FiveMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 769
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 770
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 771
    :cond_3
    const/16 v0, 0x800

    if-ne p1, v0, :cond_4

    const/16 v0, 0x600

    if-ne p2, v0, :cond_4

    .line 772
    const-string v0, "ThreeMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 773
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 774
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 775
    :cond_4
    const/16 v0, 0x640

    if-ne p1, v0, :cond_5

    const/16 v0, 0x4b0

    if-ne p2, v0, :cond_5

    .line 776
    const-string v0, "TwoMP"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 777
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 778
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 779
    :cond_5
    const/16 v0, 0x500

    if-ne p1, v0, :cond_6

    if-ne p2, v3, :cond_6

    .line 780
    const-string v0, "720p"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 781
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 782
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 783
    :cond_6
    if-ne p1, v3, :cond_7

    const/16 v0, 0x240

    if-ne p2, v0, :cond_7

    .line 784
    const-string v0, "PAL_D1"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 785
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 786
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 787
    :cond_7
    if-ne p1, v3, :cond_8

    const/16 v0, 0x1e0

    if-ne p2, v0, :cond_8

    .line 788
    const-string v0, "NTSC_D1"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 789
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 790
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 791
    :cond_8
    const/16 v0, 0x280

    if-ne p1, v0, :cond_9

    const/16 v0, 0x1e0

    if-ne p2, v0, :cond_9

    .line 792
    const-string v0, "VGA"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 793
    const v0, 0x3f19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 794
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 795
    :cond_9
    const/16 v0, 0x160

    if-ne p1, v0, :cond_a

    const/16 v0, 0x120

    if-ne p2, v0, :cond_a

    .line 796
    const-string v0, "VGA"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 797
    const v0, 0x3ee66666

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 798
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 799
    :cond_a
    const/16 v0, 0x140

    if-ne p1, v0, :cond_b

    const/16 v0, 0xf0

    if-ne p2, v0, :cond_b

    .line 800
    const/16 v0, 0x140

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 801
    const/16 v0, 0xf0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 802
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 803
    const v0, 0x3e19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 804
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 805
    :cond_b
    const/16 v0, 0xb0

    if-ne p1, v0, :cond_c

    const/16 v0, 0x90

    if-ne p2, v0, :cond_c

    .line 806
    const-string v0, "QCIF"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 807
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 808
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 810
    :cond_c
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 811
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 812
    const-string v0, "1280x960"

    iput-object v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 813
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 814
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0
.end method

.method public update(Ljava/lang/String;)V
    .locals 6
    .parameter "mString"

    .prologue
    const/high16 v5, 0x4100

    const/high16 v4, 0x40a0

    const/16 v3, 0x2d0

    const/high16 v2, 0x3f40

    const/4 v1, 0x0

    .line 667
    iput-object p1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mDescription:Ljava/lang/String;

    .line 668
    const-string v0, "EightMPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3264x1840"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    const/16 v0, 0xcc0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 671
    const/16 v0, 0x730

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 672
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 673
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    .line 744
    :goto_0
    return-void

    .line 675
    :cond_1
    const-string v0, "EightMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3264x2448"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    :cond_2
    const/16 v0, 0xcc0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 678
    const/16 v0, 0x990

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 679
    iput v5, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 680
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 682
    :cond_3
    const-string v0, "FiveMPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "2592x1458"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 683
    :cond_4
    const/16 v0, 0xa20

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 684
    const/16 v0, 0x5b2

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 685
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 686
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 687
    :cond_5
    const-string v0, "FiveMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "2592x1936"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 688
    :cond_6
    const/16 v0, 0xa20

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 689
    const/16 v0, 0x790

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 690
    iput v4, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 691
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 692
    :cond_7
    const-string v0, "ThreeMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "2048x1536"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 693
    :cond_8
    const/16 v0, 0x800

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 694
    const/16 v0, 0x600

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 695
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 696
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto :goto_0

    .line 697
    :cond_9
    const-string v0, "TwoMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "1600x1200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 698
    :cond_a
    const/16 v0, 0x640

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 699
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 700
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 701
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 702
    :cond_b
    const-string v0, "720p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 703
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 704
    iput v3, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 705
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 706
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 707
    :cond_c
    const-string v0, "PAL_D1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 708
    iput v3, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 709
    const/16 v0, 0x240

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 710
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 711
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 712
    :cond_d
    const-string v0, "NTSC_D1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 713
    iput v3, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 714
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 715
    iput v2, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 716
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 717
    :cond_e
    const-string v0, "VGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 718
    const/16 v0, 0x280

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 719
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 720
    const v0, 0x3f19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 721
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 722
    :cond_f
    const-string v0, "CIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 723
    const/16 v0, 0x160

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 724
    const/16 v0, 0x120

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 725
    const v0, 0x3ee66666

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 726
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 727
    :cond_10
    const-string v0, "QVGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 728
    const/16 v0, 0x140

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 729
    const/16 v0, 0xf0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 730
    const v0, 0x3e19999a

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 731
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 732
    :cond_11
    const-string v0, "QCIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 733
    const/16 v0, 0xb0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 734
    const/16 v0, 0x90

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 735
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 736
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0

    .line 738
    :cond_12
    const/16 v0, 0x500

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mWidth:I

    .line 739
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mHeight:I

    .line 740
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mSize:F

    .line 741
    iput-boolean v1, p0, Lcom/motorola/Camera/CameraGlobalType$CamSize;->mLock:Z

    goto/16 :goto_0
.end method
