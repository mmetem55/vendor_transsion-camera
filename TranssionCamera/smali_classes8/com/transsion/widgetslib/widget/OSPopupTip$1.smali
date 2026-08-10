.class Lcom/transsion/widgetslib/widget/OSPopupTip$1;
.super Landroid/transition/Visibility;
.source "OSPopupTip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSPopupTip;->show(Landroid/view/View;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$layout:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$layout:Landroid/view/View;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    sget-object p3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 p4, 0x2

    new-array v0, p4, [F

    fill-array-data v0, :array_0

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, p4, [F

    fill-array-data v0, :array_1

    .line 172
    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, p4, [F

    fill-array-data v0, :array_2

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    aput-object p3, p2, p4

    .line 171
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$context:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$anim;->os_popup_tip_interpolator:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$layout:Landroid/view/View;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    sget-object p3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 p4, 0x2

    new-array v0, p4, [F

    fill-array-data v0, :array_0

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, p4, [F

    fill-array-data v0, :array_1

    .line 163
    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, p4, [F

    fill-array-data v0, :array_2

    invoke-static {p3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    aput-object p3, p2, p4

    .line 162
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 164
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 165
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$context:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$anim;->os_popup_tip_interpolator:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
