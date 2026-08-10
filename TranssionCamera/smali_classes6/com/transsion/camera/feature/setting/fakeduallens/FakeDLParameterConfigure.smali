.class public Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;
.super Ljava/lang/Object;
.source "FakeDLParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mWarningType:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mWarningType:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;)Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xb

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    .line 57
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    return v0

    :cond_0
    const/4 p0, 0x1

    .line 60
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected refreshToUI(I)V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 94
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 35
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportFakeDualCamera()Ljava/util/List;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->isFakeDualLensSupport()Z

    move-result v0

    const-string v1, "raw_yuv"

    const-string v2, "off"

    if-eqz v0, :cond_1

    const-string v0, "raw_raw"

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 41
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mFakeDualLens:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDLParameterConfigure;->mWarningType:I

    return-void
.end method
