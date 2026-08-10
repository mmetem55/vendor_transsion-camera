.class public Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;
.super Ljava/lang/Object;
.source "QuickPreviewParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mQuickPreview:Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;->mQuickPreview:Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;->mQuickPreview:Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters, QuickPreview value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "true"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setQuickPreview(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "true"

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "false"

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;->mQuickPreview:Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    .line 38
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;->mQuickPreview:Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;

    .line 40
    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;->needCloseQuickPreview()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreviewParameterConfig;->mQuickPreview:Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/quickpreview/QuickPreview;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
