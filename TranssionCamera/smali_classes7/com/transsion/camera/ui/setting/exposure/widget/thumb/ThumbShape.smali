.class public abstract Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;
.source "ThumbShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;
    }
.end annotation


# static fields
.field private static mRotate:F = 0.0f

.field private static mScale:F = 1.0f


# instance fields
.field protected final mBrilliantRaysLength:I

.field protected final mHeight:I

.field protected final mInterval:I

.field protected final mModeClear:Landroid/graphics/PorterDuffXfermode;

.field protected final mModeSrc:Landroid/graphics/PorterDuffXfermode;

.field protected mRadius:I

.field protected final mStroke:I

.field protected final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;)V

    .line 44
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->access$000(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    .line 45
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->access$100(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mWidth:I

    .line 46
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->access$200(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mHeight:I

    .line 47
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->access$300(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mStroke:I

    .line 48
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->access$400(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mInterval:I

    .line 49
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->access$500(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mBrilliantRaysLength:I

    .line 50
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeSrc:Landroid/graphics/PorterDuffXfermode;

    .line 51
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeClear:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method private clearThumbArea(Landroid/graphics/Canvas;)V
    .locals 10

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeClear:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v2

    mul-float/2addr v0, v2

    .line 98
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v2, v1

    neg-float v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v5, v1, v3

    neg-float v1, v2

    sub-float v6, v1, v3

    add-float v7, v0, v3

    add-float v8, v2, v3

    .line 99
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeSrc:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static scale()F
    .locals 1

    .line 67
    sget v0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mScale:F

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    add-int/2addr p2, p4

    .line 82
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p5

    .line 83
    div-int/lit8 p3, p3, 0x2

    int-to-float p2, p2

    int-to-float p3, p3

    .line 85
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->clearThumbArea(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public height()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mHeight:I

    return p0
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public rotate()F
    .locals 0

    .line 75
    sget p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRotate:F

    return p0
.end method

.method public rotate(F)V
    .locals 0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    .line 71
    sput p1, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRotate:F

    return-void
.end method

.method public width()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mWidth:I

    return p0
.end method
