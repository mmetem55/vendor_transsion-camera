.class Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RoundRectOutlineProvider.java"


# instance fields
.field private mRadius:F

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(F)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;->mRect:Landroid/graphics/Rect;

    .line 25
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;->mRadius:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;->mRect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 33
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;->mRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;->mRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
