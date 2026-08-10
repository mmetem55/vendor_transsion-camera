.class public Lcom/transsion/camera/adapter/CameraInfoUtil;
.super Ljava/lang/Object;
.source "CameraInfoUtil.java"


# direct methods
.method public static getFacing(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static isCameraFacingBack(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCameraFacingBack(Ljava/lang/String;)Z
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result p0

    return p0
.end method

.method public static isCameraFacingFront(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCameraFacingFront(Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p0

    return p0
.end method

.method public static isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
