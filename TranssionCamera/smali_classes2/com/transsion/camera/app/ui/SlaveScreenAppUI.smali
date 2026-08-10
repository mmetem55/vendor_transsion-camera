.class public Lcom/transsion/camera/app/ui/SlaveScreenAppUI;
.super Ljava/lang/Object;
.source "SlaveScreenAppUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mMainScreenRect:Landroid/graphics/Rect;

.field private mMainSurfaceViewRect:Landroid/graphics/Rect;

.field private mMode:I

.field private mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

.field private mPreviewUIRoot:Landroid/view/ViewGroup;

.field private mPreviewWidth:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

.field private final mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlaveScreenAppUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Landroid/os/Handler;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;Lcom/transsion/camera/app/ui/SlaveScreenAppUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainScreenRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMode:I

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 42
    iput-object p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;IILjava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/LayoutInflater;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mContext:Landroid/content/Context;

    .line 49
    iput p4, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMode:I

    const p4, 0x7f090387

    .line 50
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIRoot:Landroid/view/ViewGroup;

    const p4, 0x7f090385

    .line 51
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 53
    iget-object p6, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    iget-object p6, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    invoke-virtual {p6, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 56
    new-instance p6, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const/4 v1, 0x0

    invoke-direct {p6, p4, v0, v1}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    .line 57
    iget-object p4, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p6, p4, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 58
    iget-object p4, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 60
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 61
    iget-object p4, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result p4

    .line 62
    iget-object p6, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p6}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p6

    .line 63
    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p8}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    int-to-float p4, p4

    mul-float/2addr p4, v0

    float-to-int p4, p4

    int-to-float p6, p6

    mul-float/2addr p6, v0

    float-to-int p6, p6

    invoke-virtual {v1, p4, p6}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setLayoutSize(II)V

    :cond_0
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p1, p4, p6

    const/4 p1, 0x1

    .line 67
    iget-object p6, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    aput-object p6, p4, p1

    const-string p1, "com.transsion.camera.feature.vipcapture.slavepreview.SlavePreviewDisplayManager"

    invoke-static {p1, p4}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    if-eqz p1, :cond_1

    const p4, 0x7f0900f8

    .line 70
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    invoke-virtual {p1, p5, p7, p8}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->init(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz p1, :cond_2

    .line 75
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSurfaceStateListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_2
    return-void
.end method

.method public notifyRawActionToUI(I)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->notifyCameraOperateActionToUI(I)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(I)V
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->onScreenFormChanged(IZ)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 87
    sget-object v0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->pause()V

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz p0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->pause()V

    :cond_1
    return-void
.end method

.method public processSelfTimer(ZI)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->processSelfTimer(ZI)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->resume()V

    :cond_0
    return-void
.end method

.method public runSlavePreview()V
    .locals 3

    .line 108
    sget-object v0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runSlavePreview, mPreviewWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 113
    :cond_0
    iput v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMode:I

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setPreviewSize(II)V

    :cond_1
    return-void
.end method

.method public setMainScreenSurfaceViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->setMainScreenSurfaceViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(D)V
    .locals 5

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 137
    iput v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v2, v2

    .line 138
    iput v2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    if-le v2, v0, :cond_1

    .line 140
    iput v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    int-to-double v2, v0

    div-double/2addr v2, p1

    double-to-int v2, v2

    .line 141
    iput v2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    .line 143
    :cond_1
    sget-object v2, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewSize ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", screenWidth: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", screenHeight: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMode:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mPreviewWidth:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mPreviewHeight:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMode:I

    if-nez p1, :cond_3

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mMainSurfaceViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 149
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    iget v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setLayoutSize(II)V

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    iget v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setPreviewSize(II)V

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    if-eqz p2, :cond_3

    .line 152
    iget v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {p2, v0, p0}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->resize(II)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    iget p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setPreviewSize(II)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    iget p2, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewHeight:I

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setLayoutSize(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 97
    sget-object v0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->unInit()V

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->mSlaveDisplayManager:Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    if-eqz p0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->unInit()V

    :cond_1
    return-void
.end method
