.class public Lcom/transsion/camera/app/ui/SlavePreviewUI;
.super Ljava/lang/Object;
.source "SlavePreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IPreviewUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;,
        Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;,
        Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;

.field private mPreviewAspectRatio:D

.field private mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewView:Landroid/view/View;

.field private mRelativePreviewRect:Landroid/graphics/Rect;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private final mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$aS2XDakQ2BKJsmVkiXvRC6H8n4M(Lcom/transsion/camera/app/ui/SlavePreviewUI;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->lambda$doSetPreviewSize$0(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlavePreviewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginTop:I

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginBottom:I

    .line 38
    iput v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginLeft:I

    .line 39
    iput v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginRight:I

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetWidth:I

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetHeight:I

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 54
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    .line 55
    new-instance p1, Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    .line 56
    new-instance p1, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;Lcom/transsion/camera/app/ui/SlavePreviewUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/SlavePreviewUI;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->doSetPreviewSize(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/SlavePreviewUI;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->doSetLayoutSize(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/ui/anim/AnimationManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Landroid/graphics/Rect;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mRelativePreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private doSetLayoutSize(II)V
    .locals 3

    .line 285
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetLayoutSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 289
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 291
    :cond_0
    iget p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginLeft:I

    iget p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginTop:I

    iget v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginRight:I

    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginBottom:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    iget p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetWidth:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 294
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private doSetPreviewSize(II)V
    .locals 4

    .line 269
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetPreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 271
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewAspectRatio:D

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewAspectRatio:D

    .line 273
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->getPreviewMarginInfo()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getSlaveSurfaceDisplaySize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getSlaveSurfaceDisplaySize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 278
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getSlaveSurfaceDisplaySize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 277
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->updateSurfaceDisplaySize(II)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setPreviewSize(II)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    new-instance v1, Lcom/transsion/camera/app/ui/SlavePreviewUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;II)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getPreviewMarginInfo()V
    .locals 10

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 301
    iput v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetWidth:I

    int-to-double v1, v1

    .line 302
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewAspectRatio:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetHeight:I

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenRatio()D

    move-result-wide v5

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 304
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v7

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 305
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v8

    iget v9, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetHeight:I

    move-wide v2, v3

    move-wide v4, v5

    move v6, v0

    .line 303
    invoke-static/range {v2 .. v9}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DDIIII)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginTop:I

    const/4 v2, 0x0

    .line 306
    iput v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginLeft:I

    .line 307
    iput v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginRight:I

    .line 308
    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetHeight:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginBottom:I

    .line 309
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewMarginInfo targetWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",targetHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mTargetHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mMarginBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPreviewAspectRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewAspectRatio:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doSetPreviewSize$0(II)V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setFixedSize(II)V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cameraOperateAction(I)V

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz p0, :cond_1

    .line 99
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->cameraOperateAction(I)V

    :cond_1
    return-void
.end method

.method public currentDisplayStyle()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewLayoutRatio()D
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewAspectRatio:D

    return-wide v0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public hideCustomPreviewCover()V
    .locals 0

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .line 112
    new-instance v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;-><init>(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    .line 113
    invoke-interface {v0, p3}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->setProjectAuxSupport(Z)V

    .line 114
    iget-object p3, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    new-instance v0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;Lcom/transsion/camera/app/ui/SlavePreviewUI$1;)V

    invoke-interface {p3, p1, p2, v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;

    move-result-object p1

    .line 115
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mRootView:Landroid/view/ViewGroup;

    .line 116
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewView:Landroid/view/View;

    .line 117
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 118
    iget-object p2, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p2, :cond_0

    .line 119
    iget-object p3, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->inflate()V

    :cond_0
    return-object p1
.end method

.method public needBuildBlurCoverView(Z)V
    .locals 0

    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDoubleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 243
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showCover -"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewViewCover()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 246
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 84
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 77
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onResume()V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(I)V
    .locals 3

    .line 175
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFormChanged, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 178
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cameraOperateAction(I)V

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    return-void
.end method

.method public resetRootParentLayout()V
    .locals 0

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAuxPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .locals 0

    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLayoutSize(II)V
    .locals 3

    .line 168
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayoutSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    .line 162
    sget-object v0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSize through message width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-void
.end method

.method public setupViews()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mPreviewView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mOnLayoutChangeListenerImpl:Lcom/transsion/camera/app/ui/SlavePreviewUI$OnLayoutChangeListenerImpl;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/SlavePreviewUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->mAnimationManager:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->unInit()V

    :cond_0
    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updatePreviewLayout(ZZD)V
    .locals 1

    .line 187
    sget-object p0, Lcom/transsion/camera/app/ui/SlavePreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePreviewLayout, animation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", previewRatio:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
