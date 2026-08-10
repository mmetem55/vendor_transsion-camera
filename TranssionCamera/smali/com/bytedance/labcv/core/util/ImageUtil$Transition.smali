.class public Lcom/bytedance/labcv/core/util/ImageUtil$Transition;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/core/util/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation


# instance fields
.field private mAngle:I

.field private mMVPMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 599
    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    const/4 v1, 0x0

    .line 600
    iput v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mAngle:I

    .line 603
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public crop(Landroid/widget/ImageView$ScaleType;IIIII)Lcom/bytedance/labcv/core/util/ImageUtil$Transition;
    .locals 8

    .line 642
    rem-int/lit16 p2, p2, 0xb4

    const/16 v0, 0x5a

    if-ne p2, v0, :cond_0

    .line 643
    iget-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    move-object v2, p1

    move v3, p4

    move v4, p3

    move v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/labcv/core/opengl/GlUtil;->getShowMatrix([FLandroid/widget/ImageView$ScaleType;IIII)V

    goto :goto_0

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v2 .. v7}, Lcom/bytedance/labcv/core/opengl/GlUtil;->getShowMatrix([FLandroid/widget/ImageView$ScaleType;IIII)V

    :goto_0
    return-object p0
.end method

.method public flip(ZZ)Lcom/bytedance/labcv/core/util/ImageUtil$Transition;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    invoke-static {v0, p1, p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->flip([FZZ)[F

    return-object p0
.end method

.method public getAngle()I
    .locals 0

    .line 621
    iget p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mAngle:I

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method public getMatrix()[F
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    return-object p0
.end method

.method public reverse()Lcom/bytedance/labcv/core/util/ImageUtil$Transition;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 667
    iget-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    :cond_0
    return-object p0
.end method

.method public rotate(F)Lcom/bytedance/labcv/core/util/ImageUtil$Transition;
    .locals 1

    .line 635
    iget v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mAngle:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mAngle:I

    .line 636
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    invoke-static {v0, p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->rotate([FF)[F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->mMVPMatrix:[F

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 680
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
