.class public Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;
.super Ljava/lang/Object;
.source "EditWaterMarkParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m4in1Size:I

.field private mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWatermarkSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters] edit watermark is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] isModeSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isModeSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isModeSupport()Z

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setEditWatermarkMode(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method get4in1Size()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->m4in1Size:I

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 45
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->m4in1Size:I

    goto :goto_0

    .line 49
    :cond_0
    iput v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->m4in1Size:I

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->isEditWatermarkSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "value_edit_watermark_on"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "on"

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMarkParameterConfigure;->mEditWaterMark:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
