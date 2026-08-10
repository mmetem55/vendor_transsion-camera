.class public abstract Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;
.super Ljava/lang/Object;
.source "AbstractThermalThrottleUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IThermalThrottleUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCutoutHeight:I

.field private mHandler:Landroid/os/Handler;

.field protected mHasShow:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLayout:Landroid/view/View;

.field protected mParent:Landroid/view/ViewGroup;

.field private mPopupOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHasShow:Z

    .line 51
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->doShow(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->doHide()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->doInitView()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->doUninitView()V

    return-void
.end method

.method private doHide()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->fadeOut(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private doInitView()V
    .locals 0

    return-void
.end method

.method private doShow(I)V
    .locals 3

    .line 90
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHasShow:Z

    if-nez v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->getMediumTemperatureLayout()I

    move-result p1

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->getLowTemperatureLayout()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-ne p1, v1, :cond_2

    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->updateLayout()V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mPopupOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    if-eqz p1, :cond_3

    .line 110
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->hidePopupOption()V

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->fadeIn(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private doUninitView()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    .line 157
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Remove complete."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method abstract fadeIn(Landroid/view/View;)V
.end method

.method abstract fadeOut(Landroid/view/View;)V
.end method

.method abstract getLowTemperatureLayout()I
.end method

.method abstract getMediumTemperatureLayout()I
.end method

.method public hide(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    return-object p2
.end method

.method public initView()V
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHasShow:Z

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->doUninitView()V

    return-void
.end method

.method public setCutoutHeight(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mCutoutHeight:I

    return-void
.end method

.method public setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mPopupOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    return-void
.end method

.method public show(I)V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInitView()V
    .locals 1

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method abstract updateLayout()V
.end method
