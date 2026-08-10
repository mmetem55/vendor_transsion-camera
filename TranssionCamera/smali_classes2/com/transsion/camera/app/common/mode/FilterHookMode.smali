.class public abstract Lcom/transsion/camera/app/common/mode/FilterHookMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "FilterHookMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "TD;>;D:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "TT;TD;>;"
    }
.end annotation


# instance fields
.field private mAsdEnhanceFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

.field private mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 8

    .line 42
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    const/4 p7, 0x1

    new-array p7, p7, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p7, v0

    const-string v1, "com.transsion.camera.feature.arcfilter.preview.ArcFilterPreview"

    .line 43
    invoke-static {v1, p7}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    new-array p7, v0, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.asdenhance.ASDEnhance"

    .line 44
    invoke-static {v0, p7}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mAsdEnhanceFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p7}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    :cond_0
    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-interface {v2, p3, p4, v1, v0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->onPostViewData(IIIZ)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    .line 34
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onPostViewData([BIIII)V

    :cond_2
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->onShutterClick()Z

    :cond_0
    return p1
.end method

.method public pause()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->resume()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->unInit()V

    :cond_0
    return-void
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/FilterHookMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->updateFilterSupportIds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
