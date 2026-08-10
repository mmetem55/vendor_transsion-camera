.class public Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.super Ljava/lang/Object;
.source "GLSurfaceViewController.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

.field private mAuxExpandView:Landroid/view/View;

.field private mAuxLocateView:Landroid/view/View;

.field private volatile mAuxPreviewHeight:I

.field private mAuxPreviewRoot:Landroid/view/View;

.field private mAuxPreviewView:Landroid/view/TextureView;

.field private volatile mAuxPreviewWidth:I

.field private mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field private volatile mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewViewCover:Landroid/view/View;

.field private volatile mPreviewWidth:I

.field private mProjectSupportAux:Z

.field private final mSlaveScreen:Z

.field private volatile mSurfaceDisplayHeight:I

.field private volatile mSurfaceDisplayWidth:I

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GLSurfaceViewCtrl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Z)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    .line 39
    iput v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    .line 57
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->translateToMultiple2(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    return p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    return p0
.end method

.method private static final translateToMultiple2(I)I
    .locals 1

    .line 48
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    if-eqz p0, :cond_0

    .line 437
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->cameraOperateAction(I)V

    :cond_0
    return-void
.end method

.method public getAuxExpandView()Landroid/view/View;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxExpandView:Landroid/view/View;

    return-object p0
.end method

.method public getAuxPreviewView()Landroid/view/View;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    return-object p0
.end method

.method public getLocateAuxView()Landroid/view/View;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxLocateView:Landroid/view/View;

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .locals 3

    .line 311
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[inflateView] mProjectSupportAux:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSlaveScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 315
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f0c017c

    .line 316
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 317
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    if-eqz p2, :cond_1

    const p2, 0x7f090380

    .line 318
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 319
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p2, 0x7f09009c

    .line 320
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    const p3, 0x7f090098

    .line 321
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    .line 322
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewRoot:Landroid/view/View;

    const p3, 0x7f09009b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxLocateView:Landroid/view/View;

    const p2, 0x7f09009a

    .line 324
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 325
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p2, 0x7f090099

    .line 326
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxExpandView:Landroid/view/View;

    .line 327
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;

    invoke-direct {p3, p0, v1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_0
    const p3, 0x7f0c013b

    .line 330
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_1
    :goto_0
    const p2, 0x7f090381

    .line 333
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    .line 335
    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setAlgoRenderer(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    const p2, 0x7f090383

    .line 336
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewViewCover:Landroid/view/View;

    .line 337
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;

    invoke-direct {p3, p0, v1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceTextureListener(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;)V

    .line 338
    new-instance p2, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;

    invoke-direct {p2, p0, v1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p1
.end method

.method public setAuxPreviewSize(II)V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 370
    sget-object v1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAuxPreviewSize auxSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 373
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 374
    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz v1, :cond_0

    .line 375
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 378
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewWidth:I

    .line 379
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mAuxPreviewHeight:I

    return-void
.end method

.method public setFixedSize(II)V
    .locals 3

    .line 422
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 5

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSize surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewWidth:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewHeight:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    if-ne v2, p2, :cond_0

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceSize(II)V

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 392
    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    if-eq v2, p2, :cond_3

    .line 394
    :cond_1
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSlaveScreen:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    if-lez v2, :cond_2

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewSize setDefaultBufferSize, width:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iget v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    iget v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz v1, :cond_3

    .line 401
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 404
    :cond_3
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewWidth:I

    .line 405
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mPreviewHeight:I

    return-void
.end method

.method public setProjectAuxSupport(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mProjectSupportAux:Z

    return-void
.end method

.method public updateSurfaceDisplaySize(II)V
    .locals 3

    .line 410
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurfaceDisplaySize, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayWidth:I

    .line 412
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->mSurfaceDisplayHeight:I

    return-void
.end method
