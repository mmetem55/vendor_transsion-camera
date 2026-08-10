.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;
.super Landroid/widget/RelativeLayout;
.source "VideoMakeUpBottomUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MLJ4w94Aa6bSWxkx7FxluNY7i1o(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->lambda$updateValueChange$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$updateValueChange$0(Ljava/lang/String;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateValueChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->closeContrast(Z)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_root:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    return-void
.end method

.method public openContrast()V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->openContrast()V

    :cond_0
    return-void
.end method

.method public progressChanged(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->progressChanged(I)V

    :cond_0
    return-void
.end method

.method public registerSettingData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mSettingDataList:Ljava/util/List;

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 95
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v2, "key_video_makeup_style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetUI()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->resetUI()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    return-void
.end method

.method public unregisterSettingData()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mSettingDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 105
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_video_makeup_style"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateFeatureRv(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(Z)V

    :cond_0
    return-void
.end method

.method public updateLayout(II)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateLayout(II)V

    :cond_0
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
