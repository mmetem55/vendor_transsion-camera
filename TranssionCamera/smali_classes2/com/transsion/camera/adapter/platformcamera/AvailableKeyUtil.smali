.class public Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;
.super Ljava/lang/Object;
.source "AvailableKeyUtil.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AvailableKeyUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->hasKey(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    sget-object v1, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue error, this key is not define: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 27
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hasKey(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
