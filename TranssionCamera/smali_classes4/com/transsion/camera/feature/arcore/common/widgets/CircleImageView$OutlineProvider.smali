.class Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$OutlineProvider;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$1;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$OutlineProvider;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 491
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView$OutlineProvider;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 493
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
