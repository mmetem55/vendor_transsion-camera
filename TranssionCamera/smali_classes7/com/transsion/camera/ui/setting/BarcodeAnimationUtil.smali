.class public Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;
.super Ljava/lang/Object;
.source "BarcodeAnimationUtil.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static bottom:F

.field public static mAlaphChange:Z

.field private static mInterpolatorEnd:Landroid/view/animation/PathInterpolator;

.field private static mInterpolatorStart:Landroid/view/animation/PathInterpolator;

.field public static mIsStartAnimation:I

.field public static mMarinBottom:I

.field public static mPreviewHeight:I

.field public static mPreviewWidth:I

.field public static mQRCodeRectf:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mInterpolatorStart:Landroid/view/animation/PathInterpolator;

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mInterpolatorEnd:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 27
    sput v0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BarcodeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$000(FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->setImageAlpha(FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static endBoxAnimation(FFLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 38
    sget-object v6, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x41200000    # 10.0f

    sub-float v8, v6, v7

    const/4 v9, 0x0

    aput v8, v5, v9

    const/high16 v8, 0x420c0000    # 35.0f

    sub-float/2addr v6, v8

    const/4 v10, 0x1

    aput v6, v5, v10

    const-string v6, "translationX"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v11, v4, [F

    .line 39
    sget-object v12, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float v13, v12, v7

    aput v13, v11, v9

    sub-float/2addr v12, v8

    aput v12, v11, v10

    const-string v12, "translationY"

    invoke-static {v12, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    new-array v13, v4, [F

    .line 40
    sget-object v14, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    sub-float v15, v14, v7

    aput v15, v13, v9

    sub-float/2addr v14, v8

    aput v14, v13, v10

    invoke-static {v6, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    new-array v14, v4, [F

    add-float v15, p0, v7

    aput v15, v14, v9

    add-float v16, p0, v8

    aput v16, v14, v10

    .line 41
    invoke-static {v12, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    new-array v10, v4, [F

    add-float v18, p1, v7

    aput v18, v10, v9

    add-float v19, p1, v8

    const/16 v17, 0x1

    aput v19, v10, v17

    .line 42
    invoke-static {v6, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    new-array v8, v4, [F

    .line 43
    sget-object v4, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v7, v4, v7

    aput v7, v8, v9

    const/high16 v7, 0x420c0000    # 35.0f

    sub-float/2addr v4, v7

    aput v4, v8, v17

    invoke-static {v12, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [F

    aput v18, v8, v9

    aput v19, v8, v17

    .line 44
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v8, v7, [F

    aput v15, v8, v9

    aput v16, v8, v17

    .line 45
    invoke-static {v12, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v12, v7, [F

    .line 46
    fill-array-data v12, :array_0

    const-string v15, "Alpha"

    invoke-static {v15, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    const/4 v15, 0x3

    new-array v7, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v7, v9

    aput-object v5, v7, v17

    const/4 v5, 0x2

    aput-object v11, v7, v5

    .line 48
    invoke-static {v0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v11, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v11, v9

    aput-object v13, v11, v17

    aput-object v14, v11, v5

    .line 49
    invoke-static {v1, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v13, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v13, v9

    aput-object v10, v13, v17

    aput-object v4, v13, v5

    .line 50
    invoke-static {v2, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v10, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v10, v9

    aput-object v6, v10, v17

    aput-object v8, v10, v5

    .line 51
    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 53
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v7, v10, v9

    aput-object v11, v10, v17

    aput-object v4, v10, v5

    aput-object v6, v10, v15

    .line 54
    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xc8

    .line 55
    invoke-virtual {v8, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 56
    sget-object v4, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mInterpolatorEnd:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 58
    new-instance v4, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$1;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static setImageAlpha(FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 133
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 134
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 135
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 136
    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public static setQRCodeRectf(Landroid/graphics/RectF;FIII)V
    .locals 0

    .line 141
    sput-object p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    .line 142
    sput p1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->bottom:F

    .line 143
    sput p2, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mMarinBottom:I

    .line 144
    sput p3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewHeight:I

    .line 145
    sput p4, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewWidth:I

    return-void
.end method

.method public static startBoxAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 4

    const/4 v0, 0x3

    .line 77
    sput v0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mIsStartAnimation:I

    .line 78
    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41f00000    # 30.0f

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 79
    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 80
    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 81
    sget v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->bottom:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mMarinBottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewHeight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 82
    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewWidth:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 83
    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 84
    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mQRCodeRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewWidth:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 85
    sget v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->bottom:F

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mMarinBottom:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sget v3, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mPreviewHeight:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    new-array v0, v0, [I

    .line 87
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil;->mInterpolatorStart:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x320

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    new-instance v1, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$2;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 120
    new-instance p0, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$3;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/BarcodeAnimationUtil$3;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        -0x23
        0x19
        -0xa
    .end array-data
.end method
