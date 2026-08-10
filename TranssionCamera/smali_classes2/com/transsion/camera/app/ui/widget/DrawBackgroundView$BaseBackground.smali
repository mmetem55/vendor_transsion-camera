.class public abstract Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
.super Ljava/lang/Object;
.source "DrawBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseBackground"
.end annotation


# instance fields
.field protected final mPaint:Landroid/graphics/Paint;

.field protected mStrokeColor:I

.field private final mView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    .line 76
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method protected getHeight()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method protected getScale()F
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0
.end method

.method protected getWidth()I
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mView:Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method
