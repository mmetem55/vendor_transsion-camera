.class public final Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;
.super Ljava/lang/Object;
.source "DisplayRotationHelper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final display:Landroid/view/Display;

.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private viewportChanged:Z

.field private viewportHeight:I

.field private viewportWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "display"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "camera"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->cameraManager:Landroid/hardware/camera2/CameraManager;

    const-string v0, "window"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 52
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->display:Landroid/view/Display;

    return-void
.end method

.method private toDegrees(I)I
    .locals 2

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/16 p0, 0x10e

    return p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCameraSensorRelativeViewportAspectRatio(Ljava/lang/String;)F
    .locals 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->getCameraSensorToDisplayRotation(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_1
    :goto_0
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportHeight:I

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportWidth:I

    goto :goto_1

    .line 114
    :cond_2
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportWidth:I

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportHeight:I

    :goto_1
    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public getCameraSensorToDisplayRotation(Ljava/lang/String;)I
    .locals 1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->cameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->toDegrees(I)I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    .line 141
    rem-int/lit16 p1, p1, 0x168

    return p1

    :catch_0
    move-exception p0

    .line 131
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to determine display orientation"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportChanged:Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportWidth:I

    .line 80
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportHeight:I

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportChanged:Z

    return-void
.end method

.method public updateSessionIfNeeded(Lcom/google/ar/core/Session;)V
    .locals 3

    .line 93
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportChanged:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 95
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ar/core/Session;->setDisplayGeometry(III)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->viewportChanged:Z

    :cond_0
    return-void
.end method
