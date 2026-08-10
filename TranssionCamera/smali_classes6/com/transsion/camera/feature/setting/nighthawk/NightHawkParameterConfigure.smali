.class public Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;
.super Ljava/lang/Object;
.source "NightHawkParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final PHOTO_NIGHT_USE_TRAN_YUV:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO_NIGHT_USE_TRAN_YUV:Z


# instance fields
.field private final mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mEnableCallback:Z

.field private mIsVideoType:Z

.field private final mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 25
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->VIDEO_NIGHT_USE_TRAN_YUV:Z

    .line 26
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->PHOTO_NIGHT_USE_TRAN_YUV:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mEnableCallback:Z

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    .line 35
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    return-object p0
.end method

.method private configPhotoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    .line 91
    :goto_0
    sget-boolean v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->PHOTO_NIGHT_USE_TRAN_YUV:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoNightTranYUVMode(I)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoNightTranYUVMode(I)V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 99
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    :goto_1
    return v1
.end method

.method private configVideoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 73
    :goto_0
    sget-boolean v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->VIDEO_NIGHT_USE_TRAN_YUV:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoNightTranYUVMode(I)V

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoNightTranYUVMode(I)V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 81
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setNightHawkMode(I)V

    :goto_1
    return v2
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mEnableCallback:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->configVideoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->configPhotoParameters(Lcom/transsion/camera/adapter/CameraParameters;)I

    move-result p0

    return p0
.end method

.method enableCallback(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mEnableCallback:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->VIDEO_NIGHT_USE_TRAN_YUV:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    sget-boolean v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->PHOTO_NIGHT_USE_TRAN_YUV:Z

    if-eqz v0, :cond_2

    .line 57
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightYUVSupport()Z

    move-result p1

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isNightHawkModeSupport()Z

    move-result p1

    .line 61
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities supported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_3

    return-void

    .line 65
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "on"

    .line 67
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mNightHawk:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setIsVideoType(Z)V
    .locals 3

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsVideoType() called with: type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->mIsVideoType:Z

    return-void
.end method
