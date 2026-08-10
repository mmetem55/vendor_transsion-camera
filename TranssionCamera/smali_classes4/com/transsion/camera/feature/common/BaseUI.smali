.class public abstract Lcom/transsion/camera/feature/common/BaseUI;
.super Ljava/lang/Object;
.source "BaseUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected volatile mCapturing:Z

.field protected mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private volatile mModeChangeFlag:Z

.field private volatile mModeSwitchAnimating:Z

.field protected volatile mOrientation:I

.field protected mParentContainer:Landroid/view/ViewGroup;

.field private volatile mResumed:Z

.field protected mRootView:Landroid/view/View;

.field private volatile mUIReady:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/BaseUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/transsion/camera/feature/common/BaseUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseUI$1;-><init>(Lcom/transsion/camera/feature/common/BaseUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 71
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 31
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/common/BaseUI;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseUI;->updateVisibility()Z

    move-result p0

    return p0
.end method

.method private updateVisibility()Z
    .locals 3

    .line 200
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVisibility mUIReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mModeSwitchAnimating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mModeChangeFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected abstract doCreateView()Landroid/view/View;
.end method

.method public initView()V
    .locals 2

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_1

    const/16 v0, 0x35

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    :goto_0
    return-void
.end method

.method public onCaptureEnd()V
    .locals 4

    .line 190
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureFailed()V
    .locals 4

    .line 179
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureStart()V
    .locals 4

    .line 156
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x21

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureStop()V
    .locals 3

    .line 167
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStop, mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x3

    const/16 v2, 0x64

    invoke-interface {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-interface {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 107
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readyUI()V
    .locals 2

    .line 101
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "readyUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    return-void
.end method

.method protected final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public setModeChangeFlag(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    .line 134
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method protected final triggerUpdate()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unInitView()V
    .locals 3

    .line 118
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInitView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public updateOrientation(I)V
    .locals 3

    .line 127
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/common/utils/Utils;->setOrientation(Landroid/view/View;IZ)V

    return-void
.end method

.method protected abstract updateUI()V
.end method
