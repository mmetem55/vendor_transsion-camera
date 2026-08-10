.class public Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;
.super Ljava/lang/Object;
.source "ArcoreAnimationUtil.java"


# static fields
.field private static final SPRING_DAMPING_RATIO:F = 1.0f

.field private static final SPRING_START_VELOCITY:F = 0.0f

.field private static final SPRING_STIFFNESS:F = 400.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIEW_Y_POSITION:F = 800.0f

.field private static mCurrentTime:J

.field private static mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$nK0bGgzbQi7JLWNTxjuTj2XFyqw(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->lambda$springAnimation$0(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ArcoreAnimationUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arCoreAndFacemojiChangeAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x8

    .line 457
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 458
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 459
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static arCoreAppearAnimation(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 227
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static arCoreRecyclerViewAnimation(Landroid/view/View;F)V
    .locals 2

    neg-float p1, p1

    .line 464
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x0

    .line 465
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 467
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 468
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 469
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 470
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static arCoreSwitchDisappearAnimation(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$4;-><init>(Landroid/view/View;)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static cameraSwitchAnimation(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 233
    fill-array-data v1, :array_0

    const-string v2, "scaleY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v0, [F

    .line 234
    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v0, [F

    .line 235
    fill-array-data v5, :array_2

    const-string v6, "scaleX"

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 236
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v8, 0x64

    .line 237
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v9, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v3, v10, v1

    aput-object v5, v10, v0

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v0, [F

    .line 239
    fill-array-data v3, :array_3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v0, [F

    .line 240
    fill-array-data v3, :array_4

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v0, [F

    .line 241
    fill-array-data v4, :array_5

    invoke-static {p0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 242
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x12c

    .line 243
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v11

    aput-object v3, v6, v1

    aput-object p0, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 245
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v7, v0, v11

    aput-object v4, v0, v1

    .line 246
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 247
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
    .end array-data

    :array_3
    .array-data 4
        0x3f547ae1    # 0.83f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f547ae1    # 0.83f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static cancelShakeAnimation()V
    .locals 2

    .line 425
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 426
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_0

    .line 428
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static changeOptionAnimation(Landroid/view/View;FFI)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p2, "translationX"

    .line 192
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 193
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v2, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 194
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v2, p3

    .line 195
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 196
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object p0, p1, v1

    .line 197
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 198
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static changeOptionLeftToRight(Landroid/view/View;Landroid/view/View;FFI)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p3, v1, v3

    const-string v4, "translationX"

    .line 203
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v1, v0, [F

    aput p2, v1, v2

    aput p3, v1, v3

    .line 204
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 205
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 p3, 0x3e800000    # 0.25f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v1, p3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 206
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v4, p4

    .line 207
    invoke-virtual {p3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 208
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p2, v0, [Landroid/animation/Animator;

    aput-object p0, p2, v2

    aput-object p1, p2, v3

    .line 209
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 210
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static disappearBackGuide(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 351
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    .line 352
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v0, [F

    .line 354
    fill-array-data v0, :array_1

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 355
    new-instance v2, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x12c

    .line 366
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 368
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 370
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 371
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static disappearBackHint(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 376
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 378
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$6;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 397
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static facemojiRecyclerViewAnimation(Landroid/view/View;F)V
    .locals 2

    .line 214
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 217
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 218
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 219
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static facemojiSwitchDisappearAnimation(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 295
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$3;-><init>(Landroid/view/View;)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static isFastClick(J)Z
    .locals 5

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mCurrentTime:J

    sub-long/2addr v1, v3

    cmp-long p0, v1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    .line 62
    monitor-exit v0

    return p0

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mCurrentTime:J

    const/4 p0, 0x0

    .line 65
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$springAnimation$0(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static pressAnimation(Landroid/view/View;)V
    .locals 15

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 433
    fill-array-data v1, :array_0

    const-string v2, "scaleY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v0, [F

    .line 434
    fill-array-data v3, :array_1

    const-string v4, "alpha"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v0, [F

    .line 435
    fill-array-data v5, :array_2

    const-string v6, "scaleX"

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 436
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v8, 0xa6

    .line 437
    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v9, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v3, v10, v1

    aput-object v5, v10, v0

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v0, [F

    .line 439
    fill-array-data v3, :array_3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v0, [F

    .line 440
    fill-array-data v5, :array_4

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v0, [F

    .line 441
    fill-array-data v5, :array_5

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 442
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v12, 0xd8

    .line 443
    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v10

    new-array v14, v9, [Landroid/animation/Animator;

    aput-object v3, v14, v11

    aput-object v4, v14, v1

    aput-object v5, v14, v0

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v0, [F

    .line 445
    fill-array-data v3, :array_6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v0, [F

    .line 446
    fill-array-data v3, :array_7

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 447
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 448
    invoke-virtual {v3, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v2, v5, v11

    aput-object p0, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 450
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v9, [Landroid/animation/Animator;

    aput-object v7, v2, v11

    aput-object v8, v2, v1

    aput-object v3, v2, v0

    .line 451
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 452
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f5eb852    # 0.87f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f5eb852    # 0.87f
    .end array-data

    :array_3
    .array-data 4
        0x3f5eb852    # 0.87f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_4
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f5eb852    # 0.87f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_6
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 520
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 521
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43c80000    # 400.0f

    .line 522
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 523
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 521
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 524
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object v0
.end method

.method public static startBackgroundAndFeatureAndMusicIconAnimation(Landroid/widget/ImageView;FFJ)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    const-string v4, "scaleX"

    .line 181
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v4, v0, [F

    aput p1, v4, v2

    aput p2, v4, v3

    const-string p1, "scaleY"

    .line 182
    invoke-static {p0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 183
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 184
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p2, v4, v5, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 185
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p2, v0, [Landroid/animation/Animator;

    aput-object v1, p2, v2

    aput-object p0, p2, v3

    .line 186
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 187
    invoke-virtual {p1, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 188
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static startRecycleScaleAnimation(Landroid/view/View;JFFFF)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    const-string p4, "scaleX"

    .line 50
    invoke-static {p4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    new-array v1, v0, [F

    aput p5, v1, v2

    aput p6, v1, p3

    const-string p5, "scaleY"

    .line 51
    invoke-static {p5, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p5

    new-array p6, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, p6, v2

    aput-object p5, p6, p3

    .line 52
    invoke-static {p0, p6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const p3, 0x3dcccccd    # 0.1f

    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 55
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startShakeAnimation(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 401
    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 402
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 403
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 404
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xb7

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 406
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$7;-><init>(Landroid/view/View;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x3fc00000    # -3.0f
        0x0
        0x40400000    # 3.0f
    .end array-data
.end method

.method public static threeIconAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p3, v0

    .line 474
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    neg-float p3, p3

    div-float/2addr p3, v0

    .line 475
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 476
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    const/4 p3, 0x0

    .line 477
    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 479
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 480
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x12c

    .line 481
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 482
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 484
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 485
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 486
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 487
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 488
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 489
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 490
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 491
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static threeIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 6

    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 496
    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->threeIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;FJ)V

    return-void
.end method

.method public static threeIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;FJ)V
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 501
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 502
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 504
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 505
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 506
    invoke-virtual {p0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 507
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 509
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 510
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 511
    invoke-virtual {p0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 512
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 513
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 514
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 515
    invoke-virtual {p0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 516
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static translationYDownAnimation(Landroid/view/View;Landroid/view/View;FFJFFLandroid/animation/Animator$AnimatorListener;Landroid/content/Context;)V
    .locals 4

    .line 127
    invoke-static {p4, p5}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->isFastClick(J)Z

    move-result p9

    if-eqz p9, :cond_0

    return-void

    :cond_0
    const/4 p9, 0x2

    new-array v0, p9, [F

    const/4 v1, 0x0

    aput p6, v0, v1

    const/4 p6, 0x1

    const/4 v2, 0x0

    aput v2, v0, p6

    const-string v3, "translationY"

    .line 130
    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v0, p9, [F

    aput p2, v0, v1

    aput p3, v0, p6

    const-string p2, "alpha"

    .line 131
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-array p3, p9, [F

    aput v2, p3, v1

    aput p7, p3, p6

    .line 132
    invoke-static {p1, v3, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 133
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 134
    invoke-virtual {v0, p4, p5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 135
    new-instance p4, Landroid/view/animation/PathInterpolator;

    const p5, 0x3e851eb8    # 0.26f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p4, p5, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 136
    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/animation/Animator;

    aput-object p0, p4, v1

    aput-object p2, p4, p6

    aput-object p3, p4, p9

    .line 137
    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 138
    new-instance p0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$2;

    invoke-direct {p0, p8, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$2;-><init>(Landroid/animation/Animator$AnimatorListener;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    sget-object p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    .line 171
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p2, 0x3f400000    # 0.75f

    .line 172
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x43480000    # 200.0f

    .line 173
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 174
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/16 p1, 0x14

    .line 175
    invoke-static {p1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 176
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 177
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static translationYUpAnimation(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;FFFFFFJLandroid/animation/Animator$AnimatorListener;Landroid/content/Context;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    .line 71
    invoke-static/range {p9 .. p10}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->isFastClick(J)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 v5, 0x1

    aput p4, v3, v5

    const-string v6, "scaleX"

    .line 74
    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v2, [F

    aput p3, v6, v4

    aput p4, v6, v5

    const-string v7, "scaleY"

    .line 75
    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v6, v2, [F

    const/4 v7, 0x0

    aput v7, v6, v4

    aput p7, v6, v5

    const-string v8, "translationY"

    move-object v9, p1

    .line 76
    invoke-static {p1, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v8, v2, [F

    aput p5, v8, v4

    aput p6, v8, v5

    const-string v9, "alpha"

    .line 77
    invoke-static {p2, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 78
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-wide/from16 v10, p9

    .line 79
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 80
    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e851eb8    # 0.26f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v7, v7, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 81
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v6, v7, v4

    aput-object v8, v7, v5

    aput-object v3, v7, v2

    const/4 v2, 0x3

    aput-object v0, v7, v2

    .line 82
    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;

    move-object/from16 v2, p11

    invoke-direct {v0, v2, v9}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil$1;-><init>(Landroid/animation/Animator$AnimatorListener;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 116
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x3f400000    # 0.75f

    .line 117
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x43480000    # 200.0f

    .line 118
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 119
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move/from16 v1, p8

    .line 120
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 121
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 122
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static twoIconAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 3

    neg-float v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 251
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 252
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    div-float/2addr p3, v1

    .line 254
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p3, 0x0

    .line 255
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x12c

    .line 256
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 260
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 261
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 263
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 264
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 265
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static twoIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 6

    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 291
    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->twoIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;FJ)V

    return-void
.end method

.method public static twoIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;FJ)V
    .locals 2

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 273
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 275
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 276
    invoke-virtual {p0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 277
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 280
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 281
    invoke-virtual {p0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 282
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 284
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 285
    invoke-virtual {p0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 286
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static viewAppearaAnimation(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 533
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static viewDisappearaAnimation(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 537
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
