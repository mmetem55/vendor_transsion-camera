.class Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;
.super Ljava/lang/Object;
.source "OSCheckedDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setAnimParams(IIIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

.field final synthetic val$alphaDelta:I

.field final synthetic val$currentAlpha:I

.field final synthetic val$currentLeft:I

.field final synthetic val$currentRadius:F

.field final synthetic val$currentTop:I

.field final synthetic val$leftDelta:I

.field final synthetic val$radiusDelta:F

.field final synthetic val$topDelta:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;IIIIIIFF)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iput p2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentLeft:I

    iput p3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$leftDelta:I

    iput p4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentTop:I

    iput p5, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$topDelta:I

    iput p6, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentAlpha:I

    iput p7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$alphaDelta:I

    iput p8, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentRadius:F

    iput p9, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$radiusDelta:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 364
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$002(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    const-string v0, "pvh_border"

    .line 366
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pvh_tick"

    .line 367
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pvh_path_start"

    .line 368
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 369
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 370
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 371
    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$leftDelta:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$102(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I

    .line 372
    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentTop:I

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$topDelta:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$202(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I

    .line 373
    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentAlpha:I

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$alphaDelta:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$302(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I

    .line 374
    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentRadius:F

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$radiusDelta:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v0, v3

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$402(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    .line 376
    :cond_0
    instance-of v0, v1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$502(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    .line 379
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$602(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    .line 383
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$900(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/PathMeasure;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$500(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$800(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 385
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/PathMeasure;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$600(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 387
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1300(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 388
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v1

    aget v1, v1, v0

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x33d6bf95    # 1.0E-7f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object p1

    const/4 v2, 0x1

    aget p1, p1, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v3

    aget v3, v3, v2

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 389
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1300(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v3

    aget v3, v3, v0

    iget-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v4}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 390
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object p1

    aget p1, p1, v0

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$800(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v3

    aget v3, v3, v0

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object p1

    aget p1, p1, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$800(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v3

    aget v3, v3, v2

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_4

    .line 391
    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1300(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1400(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v3}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1500(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1300(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 396
    :cond_5
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1600(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 398
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result v0

    neg-int v0, v0

    if-ge p1, v0, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result v0

    neg-int v0, v0

    if-ge p1, v0, :cond_6

    .line 399
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1600(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result p1

    int-to-float v1, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result p1

    neg-int p1, p1

    int-to-float v3, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I

    move-result p1

    neg-int p1, p1

    int-to-float v4, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$400(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v5

    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$400(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v6

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 402
    :cond_6
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
