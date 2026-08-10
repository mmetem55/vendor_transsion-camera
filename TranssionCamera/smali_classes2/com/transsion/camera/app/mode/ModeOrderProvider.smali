.class public Lcom/transsion/camera/app/mode/ModeOrderProvider;
.super Ljava/lang/Object;
.source "ModeOrderProvider.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackDefaultMode:Ljava/lang/String;

.field private mBackRestoreMode:Ljava/lang/String;

.field private mCameraId:Ljava/lang/String;

.field private final mConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

.field private final mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFrontDefaultMode:Ljava/lang/String;

.field private mFrontRestoreMode:Ljava/lang/String;

.field private mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

.field private mSecureCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 53
    new-instance v0, Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    return-void
.end method


# virtual methods
.method public getCameraModeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->getCameraModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    return-object p0
.end method

.method public getDefaultMode()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackDefaultMode:Ljava/lang/String;

    return-object p0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPanelModeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->getPanelModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRestoreMode()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackRestoreMode:Ljava/lang/String;

    return-object p0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontRestoreMode:Ljava/lang/String;

    return-object p0
.end method

.method public getTabModeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->getTabModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isSecureCamera()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mSecureCamera:Z

    return p0
.end method

.method public moreModeShow()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->moreModeShow(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public providerMoreFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 77
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    .line 78
    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1001d9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const p0, 0x7f080714

    .line 80
    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            "Z)V"
        }
    .end annotation

    .line 62
    iput-boolean p3, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mSecureCamera:Z

    .line 63
    new-instance p3, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;

    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v2, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mSecureCamera:Z

    invoke-direct {p3, v0, v1, v2}, Lcom/transsion/camera/app/mode/MoreEditOrderPolicy;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Z)V

    iput-object p3, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    const-string p3, "0"

    .line 65
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackDefaultMode:Ljava/lang/String;

    const-string v0, "1"

    .line 66
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontDefaultMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mBackRestoreMode:Ljava/lang/String;

    const/4 v1, 0x1

    .line 68
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mFrontRestoreMode:Ljava/lang/String;

    .line 70
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    invoke-interface {p0, p1, p3, p2}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->setModeList(Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mModeOrderPolicy:Lcom/transsion/camera/app/mode/IModeOrderPolicy;

    iget-object p0, p0, Lcom/transsion/camera/app/mode/ModeOrderProvider;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/app/mode/IModeOrderPolicy;->updateCurrentModes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
