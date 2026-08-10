.class public Lcom/transsion/widgetslib/util/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public radius:F

.field public x:I

.field public x1:I

.field public y:I

.field public y1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/util/Point;->x1:I

    iput p1, p0, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 21
    iput p2, p0, Lcom/transsion/widgetslib/util/Point;->y1:I

    iput p2, p0, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 22
    iput p3, p0, Lcom/transsion/widgetslib/util/Point;->radius:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 38
    iget v0, p0, Lcom/transsion/widgetslib/util/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/util/Point;->y:I

    int-to-float v1, v1

    iget p0, p0, Lcom/transsion/widgetslib/util/Point;->radius:F

    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setDestPos(II)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/transsion/widgetslib/util/Point;->x1:I

    .line 28
    iput p2, p0, Lcom/transsion/widgetslib/util/Point;->y1:I

    return-void
.end method

.method public setStartPos(IIF)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 33
    iput p2, p0, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 34
    iput p3, p0, Lcom/transsion/widgetslib/util/Point;->radius:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point::x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/Point;->x1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/util/Point;->y1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/util/Point;->radius:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
