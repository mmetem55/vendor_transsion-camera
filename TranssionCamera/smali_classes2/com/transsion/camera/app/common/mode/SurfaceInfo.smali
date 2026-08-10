.class final Lcom/transsion/camera/app/common/mode/SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceInfo.java"


# instance fields
.field private mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mFormat:I

.field private mHeight:I

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I


# direct methods
.method constructor <init>(IIILandroid/view/Surface;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;)V

    return-void
.end method

.method private constructor <init>(IIILandroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    .line 38
    iput p2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    .line 39
    iput p3, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    .line 40
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    .line 41
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-void
.end method

.method constructor <init>(IIILcom/transsion/camera/adapter/IBGSurface;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 74
    :cond_1
    instance-of v2, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-eqz v2, :cond_2

    .line 75
    check-cast p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 76
    iget v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    iget v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    iget v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    iget v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    iget-object v3, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method getSurface()Landroid/view/Surface;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method hasSurface()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 58
    iget v0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceInfo | mWidth: "

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight: "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat: "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSurface: "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBGSurface: "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->mBGSurface:Lcom/transsion/camera/adapter/IBGSurface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
