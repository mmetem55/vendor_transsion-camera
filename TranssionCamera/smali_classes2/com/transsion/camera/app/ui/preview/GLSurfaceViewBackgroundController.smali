.class public Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;
.super Ljava/lang/Object;
.source "GLSurfaceViewBackgroundController.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$SurfaceTextureListener;,
        Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field private volatile mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private volatile mPreviewWidth:I

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->cameraOperateAction(I)V

    :cond_0
    return-void
.end method

.method public getAuxExpandView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuxPreviewView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocateAuxView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .locals 1

    .line 51
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    .line 52
    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$1;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const p3, 0x7f0c0029

    .line 53
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    .line 54
    new-instance p3, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$SurfaceTextureListener;

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$SurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$1;)V

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceTextureListener(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;)V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p2
.end method

.method public setAuxPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setFixedSize(II)V
    .locals 3

    .line 94
    sget-object v0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    const-string v3, ", mPreviewWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewWidth:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewHeight:I

    if-ne v1, p2, :cond_0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceSize(II)V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 71
    iget v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewWidth:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewHeight:I

    if-eq v1, p2, :cond_2

    .line 73
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz v1, :cond_2

    .line 75
    sget-object v2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->Background:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 79
    :cond_2
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewWidth:I

    .line 80
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewHeight:I

    return-void
.end method

.method public setProjectAuxSupport(Z)V
    .locals 0

    return-void
.end method

.method public updateBackgroundSupport(Z)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    if-nez v0, :cond_0

    .line 103
    sget-object p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateBackgroundSupport mGLPreviewView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onPause()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mGLPreviewView:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->onResume()V

    .line 122
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz p0, :cond_3

    .line 123
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->Background:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    :cond_3
    return-void
.end method

.method public updateSurfaceDisplaySize(II)V
    .locals 0

    return-void
.end method
