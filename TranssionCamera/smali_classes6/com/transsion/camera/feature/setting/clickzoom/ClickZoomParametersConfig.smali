.class public Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;
.super Ljava/lang/Object;
.source "ClickZoomParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;->mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;->mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->getSupportList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomParametersConfig;->mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
