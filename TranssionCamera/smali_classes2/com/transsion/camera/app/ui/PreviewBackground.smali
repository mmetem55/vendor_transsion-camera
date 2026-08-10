.class public Lcom/transsion/camera/app/ui/PreviewBackground;
.super Ljava/lang/Object;
.source "PreviewBackground.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/PreviewStyle$IModeTypeListener;
.implements Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;,
        Lcom/transsion/camera/app/ui/PreviewBackground$SimpleBackground;,
        Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

.field private mCurrentModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/PreviewBackground;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PreviewBackground;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0018

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 47
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Lcom/transsion/camera/app/ui/PreviewBackground$SimpleBackground;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground$SimpleBackground;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    :goto_0
    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewBackground;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/PreviewBackground;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-object p0
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->cameraOperateAction(I)V

    return-void
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onResume()V

    return-void
.end method

.method public onStyleChanged(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V
    .locals 3

    .line 91
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewBackground;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStyleChanged style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mCurrentStyle:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onStyleChanged(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V

    return-void
.end method

.method public onTypeChanged(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V
    .locals 3

    .line 98
    sget-object v0, Lcom/transsion/camera/app/ui/PreviewBackground;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTypeChanged modeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mCurrentModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->onTypeChanged(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V

    return-void
.end method

.method public setCurrentModeSupport(Z)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->setCurrentModeSupport(Z)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->setPreviewSize(II)V

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public updatePreviewContent(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground;->mBackgroundImpl:Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;->updatePreviewContent(Landroid/view/View;)V

    return-void
.end method
