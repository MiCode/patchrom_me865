.class public Lcom/motorola/Camera/CameraUtility;
.super Ljava/lang/Object;
.source "CameraUtility.java"


# static fields
.field public static final ASEC_ORDER:I = 0x1

.field public static final DESC_ORDER:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MotoCameraEngineProxy"

.field private static mCamUtil:Lcom/motorola/Camera/CameraUtility;

.field private static sPixelDensity:F


# instance fields
.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 56
    const/high16 v0, 0x3f80

    sput v0, Lcom/motorola/Camera/CameraUtility;->sPixelDensity:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/motorola/Camera/CameraUtility;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 66
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 69
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/motorola/Camera/CameraUtility;->sPixelDensity:F

    .line 71
    return-void
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 89
    sget v0, Lcom/motorola/Camera/CameraUtility;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    const-class v1, Lcom/motorola/Camera/CameraUtility;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/motorola/Camera/CameraUtility;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CameraUtility;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 82
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraEngineProxy"

    const-string v2, "new Cam Utility instance"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 939
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 940
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 941
    .local v2, stacks:[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 942
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 943
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1002
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 75
    return-void
.end method

.method public getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 80
    .parameter "mContext"
    .parameter "params"

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v75, v0

    monitor-enter v75

    .line 264
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_5

    .line 265
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_0

    .line 266
    const-string v74, "MotoCameraEngineProxy"

    const-string v76, "Dual Camera Supported"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDualCameraSuport(Z)V

    .line 280
    :goto_0
    const/4 v4, 0x0

    .line 282
    .local v4, WideScreenEnable:Z
    const-string v74, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/view/WindowManager;

    invoke-interface/range {v74 .. v74}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    .line 283
    .local v16, display:Landroid/view/Display;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_1

    .line 284
    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "getCameraCapabilities() - Display size is "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getWidth()I

    move-result v77

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string v77, "x"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getHeight()I

    move-result v77

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getWidth()I

    move-result v74

    move/from16 v0, v74

    int-to-double v0, v0

    move-wide/from16 v69, v0

    .line 288
    .local v69, width:D
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getHeight()I

    move-result v74

    move/from16 v0, v74

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 292
    .local v20, height:D
    move-wide/from16 v0, v69

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v76

    move-wide/from16 v0, v69

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v78

    div-double v76, v76, v78

    const-wide v78, 0x3ffc71c720000000L

    sub-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->abs(D)D

    move-result-wide v76

    const-wide v78, 0x3fc999999999999aL

    cmpg-double v74, v76, v78

    if-gez v74, :cond_2

    .line 293
    const/4 v4, 0x1

    .line 295
    :cond_2
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_3

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "getCameraCapabilities() - Widescreen"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setWideScreenDisplay(Z)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v74

    const/16 v76, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v32

    .line 308
    .local v32, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v32, :cond_23

    .line 315
    new-instance v64, Ljava/lang/StringBuffer;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v64, temp_picres:Ljava/lang/StringBuffer;
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v54, supportedPicSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v74

    add-int/lit8 v22, v74, -0x1

    .local v22, i:I
    :goto_1
    if-ltz v22, :cond_7

    .line 319
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    const/16 v76, 0x280

    move/from16 v0, v74

    move/from16 v1, v76

    if-lt v0, v1, :cond_4

    .line 321
    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    const-string v76, "x"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 322
    .local v50, s:Ljava/lang/String;
    move-object/from16 v0, v54

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v50           #s:Ljava/lang/String;
    :cond_4
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    .line 271
    .end local v4           #WideScreenEnable:Z
    .end local v16           #display:Landroid/view/Display;
    .end local v20           #height:D
    .end local v22           #i:I
    .end local v32           #l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v54           #supportedPicSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v64           #temp_picres:Ljava/lang/StringBuffer;
    .end local v69           #width:D
    :cond_5
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_6

    .line 272
    const-string v74, "MotoCameraEngineProxy"

    const-string v76, "Dual Camera NOTSupported"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDualCameraSuport(Z)V

    goto/16 :goto_0

    .line 789
    :catchall_0
    move-exception v74

    monitor-exit v75
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v74

    .line 325
    .restart local v4       #WideScreenEnable:Z
    .restart local v16       #display:Landroid/view/Display;
    .restart local v20       #height:D
    .restart local v22       #i:I
    .restart local v32       #l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v54       #supportedPicSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v64       #temp_picres:Ljava/lang/StringBuffer;
    .restart local v69       #width:D
    :cond_7
    :try_start_1
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v74

    add-int/lit8 v31, v74, -0x1

    .local v31, j:I
    :goto_2
    if-ltz v31, :cond_8

    .line 327
    move-object/from16 v0, v54

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v74, ","

    move-object/from16 v0, v64

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    add-int/lit8 v31, v31, -0x1

    goto :goto_2

    .line 330
    :cond_8
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_9

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "setCameraParameters() - Supported picture resln "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorPicResList(Ljava/lang/String;)V

    .line 334
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v51

    .line 336
    .local v51, size:I
    const/16 v39, 0x0

    .line 337
    .local v39, maxWSSize:Landroid/hardware/Camera$Size;
    const/16 v71, 0x0

    .line 339
    .local v71, wsSize:Ljava/lang/String;
    const/16 v74, 0x1

    move/from16 v0, v74

    if-ne v4, v0, :cond_f

    .line 341
    add-int/lit8 v26, v51, -0x1

    .local v26, ind:I
    :goto_3
    if-ltz v26, :cond_c

    .line 343
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v74

    int-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    move/from16 v0, v74

    int-to-double v0, v0

    move-wide/from16 v78, v0

    div-double v76, v76, v78

    const-wide v78, 0x3ffc71c720000000L

    sub-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->abs(D)D

    move-result-wide v76

    const-wide v78, 0x3fa999999999999aL

    cmpg-double v74, v76, v78

    if-gez v74, :cond_b

    .line 345
    if-eqz v39, :cond_a

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v76

    move/from16 v1, v74

    if-lt v0, v1, :cond_a

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v76

    move/from16 v1, v74

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    move/from16 v0, v76

    move/from16 v1, v74

    if-gt v0, v1, :cond_c

    .line 348
    :cond_a
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #maxWSSize:Landroid/hardware/Camera$Size;
    check-cast v39, Landroid/hardware/Camera$Size;

    .line 341
    .restart local v39       #maxWSSize:Landroid/hardware/Camera$Size;
    :cond_b
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_3

    .line 355
    :cond_c
    if-eqz v39, :cond_d

    .line 356
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v76, v0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v74

    const-string v76, "x"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v76, v0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    .line 358
    :cond_d
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_e

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "getCameraCapabilities() -  Widescreen Resolution"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxWSPicResolution(Ljava/lang/String;)V

    .line 362
    .end local v26           #ind:I
    :cond_f
    const/16 v38, 0x0

    .line 363
    .local v38, maxNonWSSize:Landroid/hardware/Camera$Size;
    const/16 v43, 0x0

    .line 365
    .local v43, nonWSSize:Ljava/lang/String;
    add-int/lit8 v26, v51, -0x1

    .restart local v26       #ind:I
    :goto_4
    if-ltz v26, :cond_12

    .line 367
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v74

    int-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    move/from16 v0, v74

    int-to-double v0, v0

    move-wide/from16 v78, v0

    div-double v76, v76, v78

    const-wide v78, 0x3ff5555560000000L

    sub-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->abs(D)D

    move-result-wide v76

    const-wide v78, 0x3fa999999999999aL

    cmpg-double v74, v76, v78

    if-gez v74, :cond_11

    .line 369
    if-eqz v38, :cond_10

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v76

    move/from16 v1, v74

    if-lt v0, v1, :cond_10

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v76

    move/from16 v1, v74

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v76, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    move/from16 v0, v76

    move/from16 v1, v74

    if-gt v0, v1, :cond_12

    .line 372
    :cond_10
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #maxNonWSSize:Landroid/hardware/Camera$Size;
    check-cast v38, Landroid/hardware/Camera$Size;

    .line 365
    .restart local v38       #maxNonWSSize:Landroid/hardware/Camera$Size;
    :cond_11
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_4

    .line 378
    :cond_12
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v76, v0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v74

    const-string v76, "x"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v76, v0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 380
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_13

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "getCameraCapabilities() - max Resolution"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v44

    .line 390
    .local v44, oldMaxPicResolution:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxPicResolution(Ljava/lang/String;)V

    .line 395
    const/4 v13, 0x0

    .line 402
    .local v13, currentSingleShotRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getNormalModePicResolution()Ljava/lang/String;

    move-result-object v13

    .line 403
    const-string v74, "tnrf63"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "currentSingleShorRes is "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-nez v13, :cond_18

    .line 443
    :cond_14
    :goto_5
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_15

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "The current single shot resolution is : "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v77, v0

    invoke-virtual/range {v77 .. v77}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v77

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_15
    const-string v74, "mot-max-burst-size"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 448
    .local v40, max_burst_resolution:Ljava/lang/String;
    const/4 v10, 0x0

    .line 449
    .local v10, burstModeSize:Ljava/lang/String;
    if-eqz v40, :cond_1e

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v74

    if-lez v74, :cond_1e

    .line 451
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_16

    .line 452
    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "burst max size from hal "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_16
    const-string v74, "x"

    move-object/from16 v0, v40

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v74

    const/16 v76, 0x0

    aget-object v74, v74, v76

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 456
    .local v8, bWidth:I
    const-string v74, "x"

    move-object/from16 v0, v40

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v74

    const/16 v76, 0x1

    aget-object v74, v74, v76

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 458
    .local v7, bHeight:I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_17
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v74

    if-eqz v74, :cond_1e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/hardware/Camera$Size;

    .line 460
    .local v57, supportedSizes:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v57

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v74

    if-ne v0, v8, :cond_17

    move-object/from16 v0, v57

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    move/from16 v0, v74

    if-ne v0, v7, :cond_17

    .line 463
    move-object/from16 v10, v40

    goto :goto_6

    .line 412
    .end local v7           #bHeight:I
    .end local v8           #bWidth:I
    .end local v10           #burstModeSize:Ljava/lang/String;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v40           #max_burst_resolution:Ljava/lang/String;
    .end local v57           #supportedSizes:Landroid/hardware/Camera$Size;
    :cond_18
    const/16 v29, 0x0

    .line 420
    .local v29, isSupported:Z
    const-string v74, "x"

    move-object/from16 v0, v74

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 421
    .local v15, dimensions:[Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_19

    .line 422
    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "dimensions"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_19
    if-eqz v15, :cond_1c

    array-length v0, v15

    move/from16 v74, v0

    const/16 v76, 0x2

    move/from16 v0, v74

    move/from16 v1, v76

    if-ne v0, v1, :cond_1c

    .line 426
    const/16 v74, 0x0

    aget-object v74, v15, v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 427
    .local v12, currWidth:I
    const/16 v74, 0x1

    aget-object v74, v15, v74

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 428
    .local v11, currHeight:I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v74

    if-eqz v74, :cond_1b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/hardware/Camera$Size;

    .line 429
    .local v56, supportedSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v56

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    move/from16 v0, v74

    if-ne v0, v12, :cond_1a

    move-object/from16 v0, v56

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    move/from16 v0, v74

    if-ne v0, v11, :cond_1a

    .line 430
    const/16 v29, 0x1

    .line 438
    .end local v11           #currHeight:I
    .end local v12           #currWidth:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v56           #supportedSize:Landroid/hardware/Camera$Size;
    :cond_1b
    :goto_7
    if-nez v29, :cond_14

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v76, v0

    if-eqz v71, :cond_1d

    move-object/from16 v74, v71

    :goto_8
    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 436
    :cond_1c
    const/16 v29, 0x0

    goto :goto_7

    :cond_1d
    move-object/from16 v74, v43

    .line 440
    goto :goto_8

    .line 468
    .end local v15           #dimensions:[Ljava/lang/String;
    .end local v29           #isSupported:Z
    .restart local v10       #burstModeSize:Ljava/lang/String;
    .restart local v40       #max_burst_resolution:Ljava/lang/String;
    :cond_1e
    if-nez v10, :cond_21

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    if-eqz v71, :cond_20

    .end local v71           #wsSize:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v74

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentBurstModeRes(Ljava/lang/String;)V

    .line 477
    :goto_a
    const/16 v46, 0x0

    .line 478
    .local v46, panRes:Ljava/lang/String;
    const-string v47, "2048x1536"

    .line 479
    .local v47, pictureSize:Ljava/lang/String;
    const-string v74, "ro.media.panorama.defres"

    invoke-static/range {v74 .. v74}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 480
    if-eqz v46, :cond_22

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v74

    if-lez v74, :cond_22

    const-string v74, "2048x1536"

    move-object/from16 v0, v46

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v74

    if-eqz v74, :cond_22

    .line 482
    const-string v74, "x"

    move-object/from16 v0, v46

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v60

    .line 483
    .local v60, temp:[Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v74

    add-int/lit8 v22, v74, -0x1

    :goto_b
    if-ltz v22, :cond_22

    .line 485
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    const/16 v76, 0x0

    aget-object v76, v60, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    move/from16 v0, v74

    move/from16 v1, v76

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    const/16 v76, 0x1

    aget-object v76, v60, v76

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v76

    move/from16 v0, v74

    move/from16 v1, v76

    if-ne v0, v1, :cond_1f

    .line 487
    move-object/from16 v47, v46

    .line 483
    :cond_1f
    add-int/lit8 v22, v22, -0x1

    goto :goto_b

    .end local v46           #panRes:Ljava/lang/String;
    .end local v47           #pictureSize:Ljava/lang/String;
    .end local v60           #temp:[Ljava/lang/String;
    .restart local v71       #wsSize:Ljava/lang/String;
    :cond_20
    move-object/from16 v71, v43

    .line 469
    goto :goto_9

    .line 471
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    invoke-virtual {v0, v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentBurstModeRes(Ljava/lang/String;)V

    goto :goto_a

    .line 490
    .end local v71           #wsSize:Ljava/lang/String;
    .restart local v46       #panRes:Ljava/lang/String;
    .restart local v47       #pictureSize:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxPanResDimension(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentPanResDimension(Ljava/lang/String;)V

    .line 493
    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "The panorama resolution set is : "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v77, v0

    invoke-virtual/range {v77 .. v77}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v77

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v10           #burstModeSize:Ljava/lang/String;
    .end local v13           #currentSingleShotRes:Ljava/lang/String;
    .end local v22           #i:I
    .end local v26           #ind:I
    .end local v31           #j:I
    .end local v38           #maxNonWSSize:Landroid/hardware/Camera$Size;
    .end local v39           #maxWSSize:Landroid/hardware/Camera$Size;
    .end local v40           #max_burst_resolution:Ljava/lang/String;
    .end local v43           #nonWSSize:Ljava/lang/String;
    .end local v44           #oldMaxPicResolution:Ljava/lang/String;
    .end local v46           #panRes:Ljava/lang/String;
    .end local v47           #pictureSize:Ljava/lang/String;
    .end local v51           #size:I
    .end local v54           #supportedPicSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v64           #temp_picres:Ljava/lang/StringBuffer;
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v74

    const/16 v76, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v35

    .line 500
    .local v35, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v35, :cond_33

    .line 502
    const-string v74, "MotoCameraEngineProxy"

    const-string v76, "getCameraCapabilities() - Driver hasn\'t implemented supported vid resolutions, setting defaults (QVGA)"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const-string v76, "320x240"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const-string v76, "320x240"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x0

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 598
    :cond_24
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultVideoResolution()V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultAESVideoResolution()V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v41

    .line 603
    .local v41, minEIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v37

    .line 604
    .local v37, maxEIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v17

    .line 606
    .local v17, expComp:F
    if-nez v41, :cond_25

    if-eqz v37, :cond_26

    .line 607
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMinExpCompensationIndex(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxExpCompensationIndex(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setExpCompensationStep(F)V

    .line 613
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v33

    .line 614
    .local v33, lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v33, :cond_29

    .line 615
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_27

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "getCameraCapabilities() - Supported focus modes "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFocusModes(Ljava/lang/String;)V

    .line 617
    const-string v74, "auto"

    move-object/from16 v0, v33

    move-object/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v74

    if-eqz v74, :cond_28

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->enableAutoFocus()V

    .line 622
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v74

    if-nez v74, :cond_29

    .line 624
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_44

    const-string v74, "fixed"

    move-object/from16 v0, v33

    move-object/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v74

    if-eqz v74, :cond_44

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const-string v76, "fixed"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFocusOption(Ljava/lang/String;)V

    .line 635
    :cond_29
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v34

    .line 636
    .local v34, lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v34, :cond_2b

    .line 637
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_2a

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "getCameraCapabilities()- Supported flash modes "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFlashModes(Ljava/lang/String;)V

    .line 639
    const-string v74, "torch"

    move-object/from16 v0, v34

    move-object/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v74

    if-eqz v74, :cond_2b

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setTorchSupported(Z)V

    .line 643
    :cond_2b
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v74, :cond_2d

    .line 645
    const-string v74, "mot-picture-iso-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 646
    .local v30, isoValues:Ljava/lang/String;
    if-eqz v30, :cond_2d

    .line 647
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_2c

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "getCameraCapabilities() - Supported ISO values "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setIsoValues(Ljava/lang/String;)V

    .line 654
    .end local v30           #isoValues:Ljava/lang/String;
    :cond_2d
    const-string v74, "mot-burst-picture-count-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 655
    .local v9, burstCount:Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_2e

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "burstCount"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2e
    if-eqz v9, :cond_46

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_46

    .line 659
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_2f

    const-string v74, "MotoCameraEngineProxy"

    const-string v76, "Enable multishot"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMultishotEnable(Z)V

    .line 666
    :goto_e
    const-string v74, "mot-face-detect-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    if-eqz v74, :cond_47

    .line 668
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_30

    const-string v74, "MotoCameraEngineProxy"

    const-string v76, "Enable face detection"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFaceDetectionEnable(Z)V

    .line 675
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v55

    .line 677
    .local v55, supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v55, :cond_31

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->isEmpty()Z

    move-result v74

    if-nez v74, :cond_31

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSupportedScenes(Ljava/lang/String;)V

    .line 683
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v53

    .line 684
    .local v53, supportedEffectsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v62, Ljava/lang/StringBuffer;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuffer;-><init>()V

    .line 685
    .local v62, tempEffects:Ljava/lang/StringBuffer;
    if-eqz v53, :cond_49

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_49

    .line 687
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_32

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "supportedEffectsList"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_32
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v74

    if-eqz v74, :cond_48

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    .line 691
    .local v72, x:Ljava/lang/String;
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v74

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    const-string v76, ","

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v62

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 515
    .end local v9           #burstCount:Ljava/lang/String;
    .end local v17           #expComp:F
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v33           #lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v34           #lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v37           #maxEIndex:I
    .end local v41           #minEIndex:I
    .end local v53           #supportedEffectsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v55           #supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v62           #tempEffects:Ljava/lang/StringBuffer;
    .end local v72           #x:Ljava/lang/String;
    :cond_33
    new-instance v60, Ljava/lang/StringBuffer;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuffer;-><init>()V

    .line 516
    .local v60, temp:Ljava/lang/StringBuffer;
    new-instance v61, Ljava/lang/StringBuffer;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    .local v61, tempAES:Ljava/lang/StringBuffer;
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v74

    add-int/lit8 v36, v74, -0x1

    .line 519
    .local v36, lvSize:I
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDriod2()Z

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-ne v0, v1, :cond_35

    .line 520
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_34

    .line 521
    const-string v74, "MotoCameraEngineProxy"

    const-string v76, "w20919 disable the audio zoom and audio scene"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_34
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->droidDisableFunctions()V

    .line 526
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v74

    const v76, 0x7f070018

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v49

    .line 527
    .local v49, resolutionList:[Ljava/lang/String;
    const/16 v27, 0x0

    .line 528
    .local v27, indexofMaxAESRes:I
    const/16 v26, 0x0

    .restart local v26       #ind:I
    :goto_11
    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v74, v0

    move/from16 v0, v26

    move/from16 v1, v74

    if-ge v0, v1, :cond_36

    .line 530
    aget-object v74, v49, v26

    sget-object v76, Lcom/motorola/Camera/CameraGlobalType;->MAX_AES_RES:Ljava/lang/String;

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    if-eqz v74, :cond_38

    .line 532
    move/from16 v27, v26

    .line 547
    :cond_36
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v58, supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v22, v36

    .restart local v22       #i:I
    :goto_12
    if-ltz v22, :cond_3b

    .line 550
    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v74, v0

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    const-string v76, "x"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v74

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v74, v0

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 552
    .restart local v50       #s:Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 553
    .local v14, dimension:Ljava/lang/String;
    if-nez v14, :cond_39

    .line 554
    :goto_13
    if-eqz v14, :cond_37

    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, "ro.media.camcorder."

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    move-object/from16 v0, v74

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v74 .. v74}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    const-string v76, ""

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    if-nez v74, :cond_37

    .line 555
    move-object/from16 v0, v58

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_37
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_12

    .line 528
    .end local v14           #dimension:Ljava/lang/String;
    .end local v22           #i:I
    .end local v50           #s:Ljava/lang/String;
    .end local v58           #supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_11

    .line 553
    .restart local v14       #dimension:Ljava/lang/String;
    .restart local v22       #i:I
    .restart local v50       #s:Ljava/lang/String;
    .restart local v58       #supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_39
    const-string v74, "NTSC_D1"

    move-object/from16 v0, v74

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    if-eqz v74, :cond_3a

    const-string v14, "d1NTSC"

    goto :goto_13

    :cond_3a
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    goto :goto_13

    .line 559
    .end local v14           #dimension:Ljava/lang/String;
    .end local v50           #s:Ljava/lang/String;
    :cond_3b
    const/16 v26, 0x0

    :goto_14
    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v74, v0

    move/from16 v0, v26

    move/from16 v1, v74

    if-ge v0, v1, :cond_3e

    .line 561
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v74

    add-int/lit8 v31, v74, -0x1

    .restart local v31       #j:I
    :goto_15
    if-ltz v31, :cond_3c

    .line 563
    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/String;

    aget-object v76, v49, v26

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    if-eqz v74, :cond_3d

    .line 565
    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/String;

    move-object/from16 v0, v60

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    const-string v74, ","

    move-object/from16 v0, v60

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3c

    .line 569
    move-object/from16 v0, v58

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/String;

    move-object/from16 v0, v61

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    const-string v74, ","

    move-object/from16 v0, v61

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    :cond_3c
    add-int/lit8 v26, v26, 0x1

    goto :goto_14

    .line 561
    :cond_3d
    add-int/lit8 v31, v31, -0x1

    goto :goto_15

    .line 577
    .end local v31           #j:I
    :cond_3e
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_3f

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "setCameraParameters() - Supported video resln "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_3f
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_40

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "setCameraParameters() - Supported video resln "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v45

    .line 585
    .local v45, oldSensorVidResList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v42

    .line 590
    .local v42, newSensorVidResList:Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_41

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "oldSensorVidResList: "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    const-string v77, " new "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_41
    if-eqz v45, :cond_42

    if-eqz v42, :cond_42

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    if-nez v74, :cond_24

    .line 593
    :cond_42
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_43

    const-string v74, "MotoCameraEngineProxy"

    const-string v76, "Resetting video resolution"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x0

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 626
    .end local v22           #i:I
    .end local v26           #ind:I
    .end local v27           #indexofMaxAESRes:I
    .end local v36           #lvSize:I
    .end local v42           #newSensorVidResList:Ljava/lang/String;
    .end local v45           #oldSensorVidResList:Ljava/lang/String;
    .end local v49           #resolutionList:[Ljava/lang/String;
    .end local v58           #supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v60           #temp:Ljava/lang/StringBuffer;
    .end local v61           #tempAES:Ljava/lang/StringBuffer;
    .restart local v17       #expComp:F
    .restart local v33       #lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37       #maxEIndex:I
    .restart local v41       #minEIndex:I
    :cond_44
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-eq v0, v1, :cond_45

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_29

    const-string v74, "fixed"

    move-object/from16 v0, v33

    move-object/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v74

    if-nez v74, :cond_29

    .line 628
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v76, v0

    const/16 v74, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/String;

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFocusOption(Ljava/lang/String;)V

    .line 629
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_29

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "Current Focus Option"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v77, v0

    invoke-virtual/range {v77 .. v77}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusOption()Ljava/lang/String;

    move-result-object v77

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 663
    .restart local v9       #burstCount:Ljava/lang/String;
    .restart local v34       #lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMultishotEnable(Z)V

    goto/16 :goto_e

    .line 672
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFaceDetectionEnable(Z)V

    goto/16 :goto_f

    .line 694
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v53       #supportedEffectsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v55       #supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v62       #tempEffects:Ljava/lang/StringBuffer;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSupportedEffects(Ljava/lang/String;)V

    .line 698
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_49
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v59

    .line 699
    .local v59, supportedWhiteBalanceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v63, Ljava/lang/StringBuffer;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuffer;-><init>()V

    .line 700
    .local v63, tempWhiteBalances:Ljava/lang/StringBuffer;
    if-eqz v59, :cond_4c

    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_4c

    .line 702
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_4a

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "supportedWhiteBalanceList"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_4a
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v74

    if-eqz v74, :cond_4b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    .line 706
    .restart local v72       #x:Ljava/lang/String;
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v74

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    const-string v76, ","

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    move-object/from16 v0, v63

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 709
    .end local v72           #x:Ljava/lang/String;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSupportedWhiteBalances(Ljava/lang/String;)V

    .line 713
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_4c
    new-instance v28, Landroid/hardware/Camera$CameraInfo;

    invoke-direct/range {v28 .. v28}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 714
    .local v28, info:Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v74

    if-eqz v74, :cond_56

    .line 715
    const/16 v74, 0x0

    move/from16 v0, v74

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 719
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v76, v0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setImagerOrientation(I)V

    .line 722
    const-string v74, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 723
    .local v5, audioMgr:Landroid/media/AudioManager;
    const-string v74, "motoVideoRecAudioSceneSupported"

    move-object/from16 v0, v74

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 724
    .local v18, halAudioScenes:Ljava/lang/String;
    const/16 v74, 0x0

    invoke-static/range {v74 .. v74}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 725
    .local v6, audioScenesSupported:Ljava/lang/Boolean;
    if-eqz v18, :cond_4d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v74

    if-lez v74, :cond_4d

    .line 727
    const-string v74, "="

    move-object/from16 v0, v18

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v60

    .line 728
    .local v60, temp:[Ljava/lang/String;
    if-eqz v60, :cond_4d

    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v74, v0

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_4d

    .line 730
    const/16 v74, 0x1

    invoke-static/range {v74 .. v74}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 731
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    const-string v76, "Off,"

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    const/16 v76, 0x1

    aget-object v76, v60, v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 732
    .local v52, supportedAudioScenes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSupportedAudioScenes(Ljava/lang/String;)V

    .line 733
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_4d

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "Audio Scenes supported: "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v52           #supportedAudioScenes:Ljava/lang/String;
    .end local v60           #temp:[Ljava/lang/String;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v76

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAudioScenesSupported(Z)V

    .line 740
    const-string v74, "mot-hdr-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 741
    .local v19, hdrEnable:Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_4e

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "hdrEnable= "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_4e
    if-eqz v19, :cond_57

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_57

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setHDRSupport(Z)V

    .line 751
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v73

    .line 752
    .local v73, zoomSupport:Z
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_4f

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "zoomSupport is "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomSupport(Z)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v66

    .line 758
    .local v66, vstabSupport:Z
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_50

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "vstab is: "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilizationSupported(Z)V

    .line 762
    const-string v74, "vstab-demo-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 763
    .local v65, vstabDemoSupport:Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_51

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "vstab demo is: "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_51
    if-eqz v65, :cond_52

    invoke-virtual/range {v65 .. v65}, Ljava/lang/String;->length()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_52

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilizationDemoSupported(Z)V

    .line 768
    :cond_52
    const-string v74, "mot-image-stabilization-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 770
    .local v25, imageStabilizationValues:Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_53

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "Image Stabilization:"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_53
    if-eqz v25, :cond_58

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v74

    const/16 v76, 0x1

    move/from16 v0, v74

    move/from16 v1, v76

    if-le v0, v1, :cond_58

    const/16 v24, 0x1

    .line 773
    .local v24, imageStabilizationEnable:Z
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setImageStabilization(Z)V

    .line 775
    const-string v74, "mot-wdr-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 776
    .local v67, wdrValues:Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_54

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "WDR feature Enabled? "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v76, v0

    if-eqz v67, :cond_59

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v74

    const/16 v77, 0x1

    move/from16 v0, v74

    move/from16 v1, v77

    if-le v0, v1, :cond_59

    const/16 v74, 0x1

    :goto_1a
    move-object/from16 v0, v76

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setWDREnable(Z)V

    .line 780
    const-string v74, "mot-wdr-video-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 781
    .local v68, wideScreenVideo:Ljava/lang/String;
    sget-boolean v74, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v74, :cond_55

    const-string v74, "MotoCameraEngineProxy"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v77, "video WDR feature Enabled? "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v74

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v76, v0

    if-eqz v68, :cond_5a

    invoke-virtual/range {v68 .. v68}, Ljava/lang/String;->length()I

    move-result v74

    const/16 v77, 0x1

    move/from16 v0, v74

    move/from16 v1, v77

    if-le v0, v1, :cond_5a

    const/16 v74, 0x1

    :goto_1b
    move-object/from16 v0, v76

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setWdrForVideo(Z)V

    .line 786
    const/16 v74, 0x2

    move/from16 v0, v74

    new-array v0, v0, [I

    move-object/from16 v48, v0

    .line 787
    .local v48, range:[I
    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x0

    aget v76, v48, v76

    const/16 v77, 0x1

    aget v77, v48, v77

    move-object/from16 v0, v74

    move/from16 v1, v76

    move/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultFPSRange(II)V

    .line 789
    monitor-exit v75

    .line 790
    return-void

    .line 717
    .end local v5           #audioMgr:Landroid/media/AudioManager;
    .end local v6           #audioScenesSupported:Ljava/lang/Boolean;
    .end local v18           #halAudioScenes:Ljava/lang/String;
    .end local v19           #hdrEnable:Ljava/lang/String;
    .end local v24           #imageStabilizationEnable:Z
    .end local v25           #imageStabilizationValues:Ljava/lang/String;
    .end local v48           #range:[I
    .end local v65           #vstabDemoSupport:Ljava/lang/String;
    .end local v66           #vstabSupport:Z
    .end local v67           #wdrValues:Ljava/lang/String;
    .end local v68           #wideScreenVideo:Ljava/lang/String;
    .end local v73           #zoomSupport:Z
    :cond_56
    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    goto/16 :goto_17

    .line 747
    .restart local v5       #audioMgr:Landroid/media/AudioManager;
    .restart local v6       #audioScenesSupported:Ljava/lang/Boolean;
    .restart local v18       #halAudioScenes:Ljava/lang/String;
    .restart local v19       #hdrEnable:Ljava/lang/String;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v74, v0

    const/16 v76, 0x0

    move-object/from16 v0, v74

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setHDRSupport(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_18

    .line 771
    .restart local v25       #imageStabilizationValues:Ljava/lang/String;
    .restart local v65       #vstabDemoSupport:Ljava/lang/String;
    .restart local v66       #vstabSupport:Z
    .restart local v73       #zoomSupport:Z
    :cond_58
    const/16 v24, 0x0

    goto/16 :goto_19

    .line 777
    .restart local v24       #imageStabilizationEnable:Z
    .restart local v67       #wdrValues:Ljava/lang/String;
    :cond_59
    const/16 v74, 0x0

    goto/16 :goto_1a

    .line 782
    .restart local v68       #wideScreenVideo:Ljava/lang/String;
    :cond_5a
    const/16 v74, 0x0

    goto :goto_1b
.end method

.method public getDisplayRotation()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 949
    iget-object v1, p0, Lcom/motorola/Camera/CameraUtility;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 950
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 956
    :goto_0
    return v1

    :pswitch_0
    move v1, v2

    .line 951
    goto :goto_0

    .line 952
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 953
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 954
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPostViewMode()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public getSortedList(Ljava/util/List;I)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "sortType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    .local p1, originalList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_1

    .line 801
    const/4 v8, 0x0

    .line 835
    :cond_0
    return-object v8

    .line 802
    :cond_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 803
    .local v8, sortedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 804
    .local v3, size:Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 807
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v2, 0x1

    .local v2, pass:I
    :goto_1
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 808
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v11

    sub-int/2addr v11, v2

    if-ge v0, v11, :cond_5

    .line 810
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v11, v12

    int-to-long v4, v11

    .line 811
    .local v4, size1:J
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v11, v12

    int-to-long v6, v11

    .line 813
    .local v6, size2:J
    if-nez p2, :cond_4

    .line 814
    cmp-long v11, v4, v6

    if-gez v11, :cond_3

    .line 815
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .local v9, temp1:Landroid/hardware/Camera$Size;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 816
    .local v10, temp2:Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 817
    invoke-virtual {v8, v0, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 818
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 819
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11, v9}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 808
    .end local v9           #temp1:Landroid/hardware/Camera$Size;
    .end local v10           #temp2:Landroid/hardware/Camera$Size;
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 822
    :cond_4
    const/4 v11, 0x1

    if-ne p2, v11, :cond_3

    .line 823
    cmp-long v11, v4, v6

    if-lez v11, :cond_3

    .line 824
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .restart local v9       #temp1:Landroid/hardware/Camera$Size;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 825
    .restart local v10       #temp2:Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 826
    invoke-virtual {v8, v0, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 827
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 828
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11, v9}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 807
    .end local v4           #size1:J
    .end local v6           #size2:J
    .end local v9           #temp1:Landroid/hardware/Camera$Size;
    .end local v10           #temp2:Landroid/hardware/Camera$Size;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public getSortedListBasedOnLandscapeOrientation(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "sortType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    .local p1, originalList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p0, p1, p2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 841
    .local v0, ARsortedList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 857
    .end local v0           #ARsortedList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    return-object v0

    .line 844
    .restart local v0       #ARsortedList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 845
    .local v4, indexList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 846
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v5

    div-double v1, v6, v8

    .line 847
    .local v1, aspectratio:D
    const-wide/high16 v5, 0x3ff0

    cmpg-double v5, v1, v5

    if-gez v5, :cond_1

    .line 848
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 852
    .end local v1           #aspectratio:D
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_2
    if-ltz v3, :cond_3

    .line 853
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 852
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 855
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .parameter "params"
    .parameter "count"

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 186
    const-string v0, "mot-burst-picture-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 188
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation(ILandroid/hardware/Camera;)I
    .locals 7
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 962
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 963
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 968
    const/4 v0, 0x0

    .line 970
    .local v0, degrees:I
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 971
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v3, v4, 0x168

    .line 972
    .local v3, result:I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 976
    :goto_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCameraEngineProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDisplayOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_1
    return v3

    .line 974
    .end local v3           #result:I
    :cond_1
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168

    .restart local v3       #result:I
    goto :goto_0

    .line 981
    :catch_0
    move-exception v1

    .line 982
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MotoCameraEngineProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDisplayOrientation returned with unexpected error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .parameter "params"
    .parameter "mode"

    .prologue
    .line 991
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const-string v0, "on"

    .line 993
    .local v0, value:Ljava/lang/String;
    :goto_0
    const-string v1, "mot-hdr-mode"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    const-string v0, "on"

    .line 996
    :goto_1
    const-string v1, "mot-wdr-mode"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void

    .line 991
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    goto :goto_0

    .line 995
    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    const-string v0, "off"

    goto :goto_1
.end method

.method public setExposureOffset(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 3
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v0, "mot-exposure-offset"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraUtility:setExposureOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setFaceTrackingMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "params"
    .parameter "m"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 194
    if-eqz p2, :cond_1

    .line 196
    const-string v0, "face-detect-num-faces"

    const-string v1, "6"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "face-track-frame-skip"

    const-string v1, "60"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "face-track-mode"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string v0, "face-track-mode"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFlash(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "MotoCameraEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentFlash Value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_0
    monitor-exit v1

    .line 150
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 139
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "red-eye"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .parameter "params"
    .parameter "flashVal"

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "params"
    .parameter "rect"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v2, "MotoCameraEngineProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraUtility:setFocusArea(before saturation) = 1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 216
    .local v0, size:Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_0

    .line 220
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-le v2, v3, :cond_2

    .line 221
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 222
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 225
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v3, :cond_3

    .line 226
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 227
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 231
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 245
    const-string v2, "MotoCameraEngineProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraUtility:setFocusArea(after saturation) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_4
    const-string v2, "mot-areas-to-focus"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setISO(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .parameter "params"
    .parameter "ISOValue"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string v0, "picture-iso"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraUtility:ISOValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method public setPictureRotation(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .parameter "params"
    .parameter "r"

    .prologue
    .line 94
    if-eqz p1, :cond_2

    .line 96
    const/16 v0, 0x168

    if-ne p2, v0, :cond_0

    .line 98
    const/4 p2, 0x0

    .line 101
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureRotation() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 104
    :cond_2
    return-void
.end method

.method public setPostViewMode(Z)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public showEulaMessage(Landroid/content/Context;Lcom/motorola/Camera/LocUtility;Lcom/motorola/Camera/View/Control/OnScreenController;ZLandroid/app/Activity;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcom/motorola/Camera/RotateDialogController;
    .locals 11
    .parameter "context"
    .parameter "locUtil"
    .parameter "controller"
    .parameter "locOn"
    .parameter "activity"
    .parameter "currentOrientation"
    .parameter "agree"
    .parameter "disagree"

    .prologue
    .line 866
    new-instance v1, Lcom/motorola/Camera/RotateDialogController;

    const v2, 0x7f030026

    move-object/from16 v0, p5

    invoke-direct {v1, v0, v2}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    .line 867
    .local v1, eulaRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 868
    const/4 v2, 0x2

    move/from16 v0, p6

    if-eq v0, v2, :cond_0

    .line 870
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 874
    :cond_0
    const v2, 0x7f0b007b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 875
    .local v10, formatStr:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0b014c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, message:Ljava/lang/String;
    const v2, 0x7f0b014c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0b003a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b003b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 888
    return-object v1
.end method
