.class public Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;
.super Ljava/lang/Object;
.source "ActivityOrientationParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mActivityOrientation:Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ActivityOrientationParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mActivityOrientation:Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mActivityOrientation:Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mActivityOrientation:Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mActivityOrientation:Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setActivityOrientation(I)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mActivityOrientation:Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "90"

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "180"

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "270"

    .line 51
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientationParameterConfigure;->mActivityOrientation:Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/activityorientation/ActivityOrientation;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
