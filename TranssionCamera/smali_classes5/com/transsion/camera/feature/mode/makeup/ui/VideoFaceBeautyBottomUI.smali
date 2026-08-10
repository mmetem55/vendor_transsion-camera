.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;
.super Landroid/widget/RelativeLayout;
.source "VideoFaceBeautyBottomUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$IwmW3dE625p7u8oupzK5YZ1umqA(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->lambda$updateValueChange$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$updateValueChange$0(Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateValueChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->closeContrast(Z)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 67
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    return-void
.end method

.method public openContrast()V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->openContrast()V

    :cond_0
    return-void
.end method

.method public progressChanged(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->progressChanged(I)V

    :cond_0
    return-void
.end method

.method public registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 100
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mSettingDataList:Ljava/util/List;

    .line 101
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 102
    iget-object v0, p2, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v1, "key_mu_face_beauty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object p2, p2, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setEnabled(Z)V

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    return-void
.end method

.method public unregisterSettingData()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mSettingDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 111
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

    .line 112
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_face_beauty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateFeatureRv(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateFeatureUI(Z)V

    :cond_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateLowLight(Z)V

    :cond_0
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
