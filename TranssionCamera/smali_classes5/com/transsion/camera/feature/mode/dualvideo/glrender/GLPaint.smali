.class public Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field private mColor:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->mLineWidth:F

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->mColor:I

    return p0
.end method

.method public getLineWidth()F
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->mLineWidth:F

    return p0
.end method

.method public setColor(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->mColor:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->mLineWidth:F

    return-void
.end method
