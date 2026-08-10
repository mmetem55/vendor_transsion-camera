.class public Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;
.source "SolidLineBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;)V

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;->access$000(Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 6

    add-int/2addr p2, p4

    .line 32
    div-int/lit8 p2, p2, 0x2

    int-to-float v3, p2

    int-to-float v2, p3

    int-to-float v4, p5

    .line 33
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
