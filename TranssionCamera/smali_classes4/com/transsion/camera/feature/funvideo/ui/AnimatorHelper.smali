.class public Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;
.super Ljava/lang/Object;
.source "AnimatorHelper.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/content/Context;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 14

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 16
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$dimen;->action_panel_translate_distance:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v8, v2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v8, v0, v2

    const/4 v3, 0x0

    const/4 v9, 0x1

    aput v3, v0, v9

    const-string v3, "translationY"

    .line 18
    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v2

    move-object/from16 v0, p6

    .line 19
    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v11, 0x12c

    .line 20
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 21
    new-instance v13, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;

    move-object v3, v13

    move-object v4, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;-><init>(Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 31
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    new-array v0, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v2

    move-object/from16 v3, p3

    .line 33
    invoke-static {v3, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 35
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-array v0, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v2

    move-object/from16 v3, p5

    .line 36
    invoke-static {v3, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-array v0, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v2

    move-object/from16 v1, p4

    .line 39
    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
