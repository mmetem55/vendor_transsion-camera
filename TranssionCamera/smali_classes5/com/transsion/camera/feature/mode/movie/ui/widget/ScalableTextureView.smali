.class abstract Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;
.super Landroid/view/TextureView;
.source "ScalableTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContentHeight:Ljava/lang/Integer;

.field private mContentScaleX:F

.field private mContentScaleY:F

.field private mContentWidth:Ljava/lang/Integer;

.field private mPivotPointX:F

.field private mPivotPointY:F

.field private mScaleType:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

.field private final mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointX:F

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleX:F

    .line 33
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleY:F

    .line 35
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private updateMatrixScale()V
    .locals 5

    .line 180
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMatrixScale mContentScaleX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mContentScaleY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mPivotPointX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mPivotPointY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleX:F

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleY:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointX:F

    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getPivotX()F
    .locals 0

    .line 205
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointX:F

    return p0
.end method

.method public getPivotY()F
    .locals 0

    .line 210
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointY:F

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->updateTextureSize()V

    :cond_0
    return-void
.end method

.method protected final setContentHeight(I)V
    .locals 0

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    return-void
.end method

.method protected final setContentWidth(I)V
    .locals 0

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    return-void
.end method

.method public setPivotX(F)V
    .locals 3

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPivotX, pivotX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointX:F

    return-void
.end method

.method public setPivotY(F)V
    .locals 3

    .line 198
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPivotY, pivotY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointY:F

    return-void
.end method

.method public setScaleType(Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    return-void
.end method

.method protected updateTextureSize()V
    .locals 15

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> updateTextureSize"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 85
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 86
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 88
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 89
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTextureSize, viewWidth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", viewHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "mContentWidth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mContentHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mScaleType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    sget-object v5, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$1;->$SwitchMap$com$transsion$camera$feature$mode$movie$ui$widget$ScalableTextureView$ScaleType:[I

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v6, v7, :cond_5

    if-eq v6, v10, :cond_0

    if-eq v6, v9, :cond_0

    if-eq v6, v8, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v6, v3, v1

    if-lez v6, :cond_1

    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    div-float/2addr v3, v1

    div-float/2addr v4, v2

    goto :goto_3

    :cond_1
    cmpg-float v6, v3, v1

    if-gez v6, :cond_2

    cmpg-float v6, v4, v2

    if-gez v6, :cond_2

    div-float v3, v1, v3

    div-float v4, v2, v4

    move v14, v4

    move v4, v3

    move v3, v14

    goto :goto_3

    :cond_2
    cmpl-float v6, v1, v3

    if-lez v6, :cond_3

    div-float v3, v1, v3

    div-float v4, v2, v4

    div-float v4, v3, v4

    goto :goto_2

    :cond_3
    cmpl-float v6, v2, v4

    if-lez v6, :cond_4

    div-float v4, v2, v4

    div-float v3, v1, v3

    div-float v3, v4, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v11

    move v4, v3

    goto :goto_3

    :cond_5
    cmpl-float v6, v1, v2

    if-lez v6, :cond_6

    mul-float/2addr v3, v2

    mul-float/2addr v4, v1

    div-float/2addr v3, v4

    :goto_1
    move v4, v11

    goto :goto_3

    :cond_6
    mul-float/2addr v4, v1

    mul-float/2addr v3, v2

    div-float/2addr v4, v3

    :goto_2
    move v3, v11

    .line 123
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateTextureSize, scaleX "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", scaleY "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    const/4 v12, 0x0

    if-eq v6, v7, :cond_a

    if-eq v6, v10, :cond_9

    if-eq v6, v9, :cond_8

    if-ne v6, v8, :cond_7

    move v6, v12

    goto :goto_4

    .line 147
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid ScaleType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/high16 v6, 0x40000000    # 2.0f

    div-float v12, v1, v6

    div-float v6, v2, v6

    goto :goto_4

    :cond_9
    move v12, v1

    move v6, v2

    goto :goto_4

    .line 143
    :cond_a
    iget v12, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointX:F

    .line 144
    iget v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointY:F

    .line 150
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateTextureSize, pivotPointX "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", pivotPointY "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mScaleType:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v10, :cond_b

    if-eq v5, v9, :cond_b

    if-eq v5, v8, :cond_b

    goto :goto_5

    .line 160
    :cond_b
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentHeight:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentWidth:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v5, v7, :cond_c

    mul-float v2, v1, v3

    div-float v11, v1, v2

    goto :goto_5

    :cond_c
    mul-float v1, v2, v4

    div-float v11, v2, v1

    :goto_5
    mul-float/2addr v3, v11

    .line 168
    iput v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleX:F

    mul-float/2addr v11, v4

    .line 169
    iput v11, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mContentScaleY:F

    .line 171
    iput v12, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointX:F

    .line 172
    iput v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->mPivotPointY:F

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->updateMatrixScale()V

    const-string p0, "<< updateTextureSize"

    .line 176
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "null content size"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
