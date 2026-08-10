.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;
.super Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;
.source "ThumbDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final DEFAULT_SIZE_DP:I = 0xc


# instance fields
.field private bgColor:I

.field private color:I

.field private mOpen:Z

.field private mRunning:Z

.field private final mSize:I

.field private final mSizeBg:I

.field private opener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;-><init>(Landroid/content/res/ColorStateList;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;II)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;-><init>(Landroid/content/res/ColorStateList;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;IIII)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 101
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    .line 48
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->color:I

    .line 49
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mSize:I

    .line 50
    iput p5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->bgColor:I

    .line 51
    iput p4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mSizeBg:I

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mOpen:Z

    return p1
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    return p1
.end method


# virtual methods
.method public animateToNormal()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mOpen:Z

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public animateToPressed()V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    .line 70
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mOpen:Z

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 72
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 73
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mSizeBg:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    .line 75
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->bgColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    :cond_0
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->color:I

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    :goto_0
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->modulateAlpha(I)I

    move-result p0

    .line 83
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mSize:I

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->mRunning:Z

    return p0
.end method

.method public setColor(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->color:I

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/ThumbDrawable;->animateToNormal()V

    return-void
.end method
