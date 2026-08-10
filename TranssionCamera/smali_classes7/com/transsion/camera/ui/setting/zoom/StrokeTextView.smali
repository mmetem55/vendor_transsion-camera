.class public Lcom/transsion/camera/ui/setting/zoom/StrokeTextView;
.super Lcom/transsion/camera/app/ui/widget/RotateTextView;
.source "StrokeTextView.java"


# instance fields
.field private mBorderColor:I

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/StrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060037

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/StrokeTextView;->mBorderColor:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 29
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/StrokeTextView;->mBorderColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/StrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/StrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
