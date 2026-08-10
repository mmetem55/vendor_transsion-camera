.class Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;
.super Ljava/lang/Object;
.source "OSRadioDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setAnimParams(IFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

.field final synthetic val$scBlueDelta:I

.field final synthetic val$scBlueStart:I

.field final synthetic val$scGreenDelta:I

.field final synthetic val$scGreenStart:I

.field final synthetic val$scRedDelta:I

.field final synthetic val$scRedStart:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;IIIIII)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    iput p2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scRedStart:I

    iput p3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scRedDelta:I

    iput p4, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scGreenStart:I

    iput p5, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scGreenDelta:I

    iput p6, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scBlueStart:I

    iput p7, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scBlueDelta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$002(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F

    const-string v0, "pvh_stroke_color"

    .line 422
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 424
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 425
    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scRedStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scRedDelta:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 426
    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scGreenStart:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scGreenDelta:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 427
    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scBlueStart:I

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->val$scBlueDelta:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 428
    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    const/16 v4, 0xff

    invoke-static {v4, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v3, v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$102(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;I)I

    :cond_0
    const-string v0, "pvh_outer_radius"

    .line 431
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$202(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F

    :cond_1
    const-string v0, "pvh_inner_radius"

    .line 436
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 437
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$302(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F

    .line 443
    :cond_2
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$400(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 444
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$400(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$200(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F

    move-result v0

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 446
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$500(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 447
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$500(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-static {v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->access$300(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F

    move-result v0

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 449
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
