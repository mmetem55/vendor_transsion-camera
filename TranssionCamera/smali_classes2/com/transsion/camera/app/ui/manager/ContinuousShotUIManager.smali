.class public Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "ContinuousShotUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 30
    new-instance v0, Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/ContinuousShotUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    return-void
.end method


# virtual methods
.method public onContinuousShotProgress(II)V
    .locals 3

    .line 62
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgress(II)V

    return-void
.end method

.method public onContinuousShotStop()V
    .locals 2

    .line 69
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onContinuousShotStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotStop()V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->setupViews()V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ContinuousShotUIManager;->mContinuousShotUI:Lcom/transsion/camera/app/ui/ContinuousShotUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ContinuousShotUI;->unInit()V

    return-void
.end method
