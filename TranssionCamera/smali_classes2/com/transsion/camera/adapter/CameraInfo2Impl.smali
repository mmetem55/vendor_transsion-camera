.class Lcom/transsion/camera/adapter/CameraInfo2Impl;
.super Ljava/lang/Object;
.source "CameraInfo2Impl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraInfo;


# instance fields
.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraInfo2Impl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method


# virtual methods
.method public getFacing()I
    .locals 1

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraInfo2Impl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSensorOrientation()I
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraInfo2Impl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
