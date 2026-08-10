.class public Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;
.super Ljava/lang/Object;
.source "RemoteCaptureManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

.field private mRootLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RemoteCaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 32
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 33
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    .line 34
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mContext:Landroid/content/Context;

    .line 35
    new-instance p2, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 36
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method


# virtual methods
.method public enterRemoteCaptureFragment(Landroid/app/Fragment;)V
    .locals 5

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "remote_capture_fragment"

    if-eqz p1, :cond_0

    .line 42
    sget-object p1, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enterEditWaterMarkFragment return."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 48
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 49
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 50
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    .line 51
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v4

    .line 48
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget v1, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRootLayoutId:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    const-string v3, "remote_capture"

    .line 52
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterRemoteCaptureFragment()V

    return-void
.end method

.method public exitRemoteCaptureFragment()V
    .locals 2

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "remote_capture_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;->mRemoteCaptureFragment:Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method
