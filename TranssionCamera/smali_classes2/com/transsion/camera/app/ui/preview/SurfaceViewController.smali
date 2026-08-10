.class public Lcom/transsion/camera/app/ui/preview/SurfaceViewController;
.super Ljava/lang/Object;
.source "SurfaceViewController.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/preview/IPreviewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsNeedReCreateSurface:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSurfaceCreated:Z

.field private mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SurfaceViewController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceCreated:Z

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    return p1
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    :cond_0
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1

    .line 148
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    if-eqz p1, :cond_1

    .line 149
    sget-object p1, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "SurfaceError"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 152
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mIsNeedReCreateSurface:Z

    :cond_1
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getPreviewViewCover()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)Landroid/view/View;
    .locals 1

    .line 41
    iput-object p3, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    const p3, 0x7f0c017d

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090381

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    .line 44
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Lcom/transsion/camera/app/ui/preview/SurfaceViewController$1;)V

    invoke-interface {p2, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-object p1
.end method

.method public setAuxPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceCreated:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    if-ne v0, p2, :cond_1

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceStatusListener:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    if-eqz p1, :cond_0

    .line 82
    sget-object p2, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-interface {p1, p2, v0, v1, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void

    .line 86
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    .line 87
    iput p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    iget v1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->mPreviewHeight:I

    invoke-interface {v0, v1, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 92
    :cond_2
    sget-object p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSize, width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setProjectAuxSupport(Z)V
    .locals 0

    return-void
.end method

.method public updateSurfaceDisplaySize(II)V
    .locals 0

    return-void
.end method
