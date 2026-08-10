.class Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;
.super Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;
.source "PreviewBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceBackground"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;
    }
.end annotation


# instance fields
.field private final mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModeSupport:Z

.field private mPreviewAspectRatio:D

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewView:Landroid/view/View;

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/PreviewBackground;


# direct methods
.method public static synthetic $r8$lambda$Z_uuPVuKdRKECZSVBfiXY1gJr4Q(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->lambda$setPreviewSize$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgUumajiMXL-AVaGyNEYmBbwVPQ(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->lambda$setCurrentModeSupport$1(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/PreviewBackground;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->this$0:Lcom/transsion/camera/app/ui/PreviewBackground;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground$1;)V

    .line 196
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mMainHandler:Landroid/os/Handler;

    .line 199
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 200
    new-instance p1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method private isSameAspectRatio(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 269
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setCurrentModeSupport$1(Z)V
    .locals 1

    .line 301
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mModeSupport:Z

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->updateBackgroundSupport(Z)V

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->this$0:Lcom/transsion/camera/app/ui/PreviewBackground;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PreviewBackground;->access$500(Lcom/transsion/camera/app/ui/PreviewBackground;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->updateRenderRequest(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V

    return-void
.end method

.method private synthetic lambda$setPreviewSize$0(II)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->setFixedSize(II)V

    return-void
.end method

.method private scalePreviewWidthFull(I)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private updatePreviewLayout()V
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    int-to-double v2, v1

    .line 276
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewAspectRatio:D

    div-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v0, v2

    .line 279
    div-int/lit8 v0, v0, 0x2

    .line 281
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    .line 282
    invoke-virtual {v3, v0, v4, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->scalePreviewWidthFull(I)V

    .line 287
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewBackground;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreviewLayout targetWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetHeight:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewAspectRatio:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewAspectRatio:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRenderRequest(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V
    .locals 3

    .line 314
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewBackground;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRenderRequest style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mModeSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mModeSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mModeSupport:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_1

    .line 316
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 317
    invoke-interface {p0, p1, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->stopRenderRequest()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->cameraOperateAction(I)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->cameraOperateAction(I)V

    return-void
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    new-instance v1, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;Lcom/transsion/camera/app/ui/PreviewBackground$1;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;

    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->getPreviewView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewView:Landroid/view/View;

    .line 207
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 236
    invoke-super {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onPause()V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 238
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 228
    invoke-super {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onResume()V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onResume()V

    :cond_0
    return-void
.end method

.method public onStyleChanged(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onStyleChanged(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->updateRenderRequest(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V

    return-void
.end method

.method public setCurrentModeSupport(Z)V
    .locals 2

    .line 299
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->setCurrentModeSupport(Z)V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4

    .line 256
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->setPreviewSize(II)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 258
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewAspectRatio:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->isSameAspectRatio(DD)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mPreviewAspectRatio:D

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->updatePreviewLayout()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mBackgroundController:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->setPreviewSize(II)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;II)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 250
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    .line 251
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-void
.end method

.method public updatePreviewContent(Landroid/view/View;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->updatePreviewContent(Landroid/view/View;)V

    .line 216
    instance-of p0, p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    if-eqz p0, :cond_0

    .line 217
    check-cast p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void
.end method
