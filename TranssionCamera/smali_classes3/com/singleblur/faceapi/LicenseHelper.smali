.class public Lcom/singleblur/faceapi/LicenseHelper;
.super Ljava/lang/Object;
.source "LicenseHelper.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sLicenseOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LicenseHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/singleblur/faceapi/LicenseHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initLicense(Ljava/lang/String;)I
    .locals 4

    const-class v0, Lcom/singleblur/faceapi/LicenseHelper;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/singleblur/faceapi/LicenseHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLiscenceStr sLicenseOk : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 25
    sget-boolean v2, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/singleblur/faceapi/FaceLibrary;->initLiscenceStr(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v3, 0x1

    .line 29
    :cond_1
    sput-boolean v3, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    move v3, p0

    .line 31
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLiscenceStr resultCode : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initLicense([B)I
    .locals 3

    .line 10
    sget-object v0, Lcom/singleblur/faceapi/LicenseHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLicense sLicenseOk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 12
    sget-boolean v1, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0}, Lcom/singleblur/faceapi/FaceLibrary;->initLiscence([B)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    .line 16
    :cond_1
    sput-boolean v2, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    move v2, p0

    .line 18
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initLicense resultCode : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sLicenseOk: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/singleblur/faceapi/LicenseHelper;->sLicenseOk:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method
