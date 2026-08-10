.class abstract Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;
.super Ljava/lang/Object;
.source "PreviewBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractBackground"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewBackground$1;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$AbstractBackground;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStyleChanged(Lcom/transsion/camera/app/ui/PreviewStyle$Style;)V
    .locals 0

    return-void
.end method

.method public onTypeChanged(Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V
    .locals 0

    return-void
.end method

.method public setCurrentModeSupport(Z)V
    .locals 0

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    return-void
.end method

.method public updatePreviewContent(Landroid/view/View;)V
    .locals 0

    return-void
.end method
