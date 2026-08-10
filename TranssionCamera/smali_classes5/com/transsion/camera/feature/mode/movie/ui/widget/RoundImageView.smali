.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundImageView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 47
    sget p4, Lcom/transsion/camera/feature/movie/R$dimen;->default_round_image_view_radius:I

    .line 48
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 50
    sget-object p4, Lcom/transsion/camera/feature/movie/R$styleable;->RoundImageView:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->RoundImageView_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method
