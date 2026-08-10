.class public abstract Lcom/transsion/camera/thermal/PlatformThermal;
.super Ljava/lang/Object;
.source "PlatformThermal.java"

# interfaces
.implements Lcom/transsion/camera/thermal/IPlatformThermal;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformThermal"


# instance fields
.field private mExitValue:I

.field private mSysTemper:I

.field private mTranTemper:I

.field private mWarningValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mSysTemper:I

    .line 19
    iput v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTranTemper:I

    const-string v0, "thermal_throttle_warning_value"

    .line 24
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mWarningValue:I

    const-string v0, "thermal_throttle_exit_value"

    .line 25
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mExitValue:I

    return-void
.end method

.method private getTemperStatusByReadTemperature(I)I
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "/sys/devices/platform/tran_battery/tran_cam"

    .line 65
    invoke-interface {p0, p1}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "/sys/devices/platform/odm/odm:tran_battery/tran_cam"

    .line 67
    invoke-interface {p0, p1}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result p1

    .line 70
    :goto_0
    sget-object v1, Lcom/transsion/camera/thermal/PlatformThermal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temperature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mWarningValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mWarningValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mExitValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mExitValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget v1, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mWarningValue:I

    if-ge p1, v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_1
    iget p0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mExitValue:I

    if-ge p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public getTemperStatus(ZI)I
    .locals 6

    if-eqz p1, :cond_0

    .line 31
    invoke-direct {p0, p2}, Lcom/transsion/camera/thermal/PlatformThermal;->getTemperStatusByReadTemperature(I)I

    move-result p0

    return p0

    :cond_0
    const-string p1, "/proc/driver/cl_cam_status"

    .line 36
    invoke-interface {p0, p1}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const-string p2, "/sys/devices/platform/odm/odm:tran_battery/tran_cam"

    .line 39
    invoke-interface {p0, p2}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    const-string p2, "/sys/devices/platform/tran_battery/tran_cam"

    .line 41
    invoke-interface {p0, p2}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, v1

    .line 44
    :goto_0
    iget v3, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mSysTemper:I

    if-eq v3, p1, :cond_3

    .line 45
    iput p1, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mSysTemper:I

    .line 46
    sget-object v3, Lcom/transsion/camera/thermal/PlatformThermal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sysTemper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_3
    iget v3, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTranTemper:I

    if-eq v3, p2, :cond_4

    .line 50
    iput p2, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTranTemper:I

    .line 51
    sget-object p0, Lcom/transsion/camera/thermal/PlatformThermal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tranTemper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez p1, :cond_5

    if-ne p2, v2, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_6

    if-ne p2, v2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0
.end method
