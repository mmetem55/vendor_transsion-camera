.class public Lcom/transsion/camera/gsensor/GyroData;
.super Ljava/lang/Object;
.source "GyroData.java"


# instance fields
.field private final mGyroValues:[F


# direct methods
.method public constructor <init>([F)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    return-void
.end method

.method private static format(F)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%+.4f"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGyroXAbsValue()F
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/gsensor/GyroData;->getGyroXValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getGyroXValue()F
    .locals 2

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    aget p0, p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGyroYAbsValue()F
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/transsion/camera/gsensor/GyroData;->getGyroYValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getGyroYValue()F
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 44
    aget p0, p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGyroZAbsValue()F
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/gsensor/GyroData;->getGyroZValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getGyroZValue()F
    .locals 2

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 55
    aget p0, p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    if-nez v0, :cond_0

    const-string p0, "Data{null}"

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/transsion/camera/gsensor/GyroData;->format(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 17
    invoke-static {v2}, Lcom/transsion/camera/gsensor/GyroData;->format(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/gsensor/GyroData;->mGyroValues:[F

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-static {p0}, Lcom/transsion/camera/gsensor/GyroData;->format(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
