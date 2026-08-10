.class final Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;
.super Ljava/lang/Object;
.source "TopBarUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatorHelper"
.end annotation


# instance fields
.field mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

.field mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;)V
    .locals 4

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    .line 209
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    .line 210
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 211
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method addMoveAnimator(Landroid/view/View;FFZ)V
    .locals 3

    .line 333
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMoveAnimator isTranslateX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p4, :cond_0

    new-array p4, v2, [F

    aput p2, p4, v1

    aput p3, p4, v0

    const-string p2, "translationX"

    .line 335
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p4, v2, [F

    aput p2, p4, v1

    aput p3, p4, v0

    const-string p2, "translationY"

    .line 337
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 p2, 0x1c2

    .line 339
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 340
    iget-object p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 9

    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    .line 298
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 299
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 300
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 301
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 304
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 p2, 0x1

    aput p3, v3, p2

    const-string v5, "alpha"

    .line 306
    invoke-static {p1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    .line 307
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    iget-object v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v7, v2, [F

    aput p4, v7, v4

    aput p5, v7, p2

    const-string v8, "scaleX"

    .line 310
    invoke-static {p1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 311
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    iget-object v8, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v8, v2, [F

    aput p4, v8, v4

    aput p5, v8, p2

    const-string p4, "scaleY"

    .line 314
    invoke-static {p1, p4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 315
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    iget-object p4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/animation/Animator;

    aput-object v3, p4, v4

    aput-object v7, p4, p2

    aput-object p1, p4, v2

    .line 318
    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p6, :cond_1

    .line 321
    invoke-virtual {v1, p6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_2

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    const-wide/16 p1, 0x64

    .line 326
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method animator(Ljava/lang/String;Landroid/view/View;Z)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    .line 229
    iget-object v4, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 230
    iget-object v6, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v6

    .line 231
    iget-object v8, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v9, 0x2

    invoke-virtual {v8, p1, v9}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v8

    .line 232
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v11, 0x3

    invoke-virtual {v10, p1, v11}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v1

    sub-int v10, v6, v4

    .line 233
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v9, :cond_0

    move v5, v7

    .line 234
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "animator isTranslateX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", curTranslate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    int-to-float v3, v6

    .line 236
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 237
    invoke-virtual {p2, v10}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p2, v10}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v3, v6

    .line 240
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    if-ne v8, v9, :cond_2

    if-ne v1, v7, :cond_2

    .line 244
    invoke-virtual {p2, v10}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 245
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_1

    :cond_2
    if-ne v8, v7, :cond_3

    if-ne v1, v7, :cond_3

    if-eqz v5, :cond_4

    int-to-float v1, v4

    int-to-float v3, v6

    .line 249
    invoke-virtual {p0, p2, v1, v3, v7}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addMoveAnimator(Landroid/view/View;FFZ)V

    goto :goto_1

    :cond_3
    if-ne v8, v7, :cond_4

    if-ne v1, v9, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 252
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V

    :cond_4
    :goto_1
    return-void
.end method

.method animatorEnd()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 292
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method animatorStart()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "mAnimators is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 221
    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 258
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v2

    .line 259
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    const/4 v6, 0x3

    invoke-virtual {p0, p1, v6}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result p0

    sub-int p1, v2, v0

    .line 261
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v5, :cond_0

    move v1, v3

    .line 262
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "withoutAnimator isTranslateX: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", curTranslate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    int-to-float v0, v2

    .line 264
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v2

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    if-ne v4, v5, :cond_2

    if-ne p0, v3, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    .line 272
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    if-ne v4, v3, :cond_4

    if-ne p0, v3, :cond_4

    if-eqz v1, :cond_5

    if-eqz p3, :cond_3

    int-to-float p0, v2

    .line 277
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 278
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v2

    .line 281
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_4
    if-ne v4, v3, :cond_5

    if-ne p0, v5, :cond_5

    .line 284
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_1
    return-void
.end method
