.class Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RoundImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView$OutlineProvider;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/RoundImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 323
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 324
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
