.class public final Lcom/transsion/widgetslib/view/OSLoadingView;
.super Landroid/view/View;
.source "OSLoadingView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/OSLoadingView$Companion;
    }
.end annotation


# static fields
.field private static final ANGLE_BEZIER_OFFSET:D = 1.5707963267948966

.field private static final ATTRACT_ANGLE:D = 0.5235987755982988

.field public static final Companion:Lcom/transsion/widgetslib/view/OSLoadingView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DURATION_APPEAL:J = 0x1f4L

.field private static final DURATION_APPEAL_DELAY:J = 0x1f4L

.field private static final DURATION_CIRCLE:J = 0x352L

.field private static final DURATION_REPEL:J = 0x1f4L

.field private static final DURATION_REPEL_DELAY:J = 0x3e8L

.field public static final RUNNING_TYPE_CIRCLE:I = 0x0

.field public static final RUNNING_TYPE_PULL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MyLoadingView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mAnimAppeal$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mAnimCircle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mAnimRepel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCenterLeftX:F

.field private mCenterLeftY:F

.field private mCenterRightX:F

.field private mCenterRightY:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleRadius:F

.field private final mCubicRatio:F

.field private mCurrentAngle:F

.field private mDotColor:I

.field private mMeasuredSize:I

.field private mOutCircleRadiusStatic:F

.field private mOuterCircleRadius:F

.field private final mPaint$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mPath$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPullPercent:F

.field private mRunningType:I

.field private mType:I

.field private mVisibilityChangedReStartAnim:Z


# direct methods
.method public static synthetic $r8$lambda$FEAbf0w7IA2LXk5l0GAEUt0dBM4(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation$lambda-2$lambda-1(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K9sDuIpfi18ZOrmX1YKMhNTDFnk(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation$lambda-4$lambda-3(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUBuTzGhZTFyWINbvuI2lAHhi90(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation$lambda-6$lambda-5(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/view/OSLoadingView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/OSLoadingView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/view/OSLoadingView;->Companion:Lcom/transsion/widgetslib/view/OSLoadingView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mPaint$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mPaint$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPaint$delegate:Lkotlin/Lazy;

    .line 46
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mPath$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mPath$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPath$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimAppeal$delegate:Lkotlin/Lazy;

    .line 53
    sget-object p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimCircle$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p3, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimRepel$2;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimRepel$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimRepel$delegate:Lkotlin/Lazy;

    const p3, 0x3f19999a    # 0.6f

    .line 60
    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    const p3, 0x40c90fdb

    .line 62
    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    .line 71
    sget-object p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "context.obtainStyledAttr\u2026.styleable.OSLoadingView)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_type:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewMedium:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    .line 72
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 77
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_dot_color:I

    .line 78
    sget p4, Lcom/transsion/widgetslib/R$color;->os_loading_view_dot_color:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 76
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    .line 81
    sget p1, Lcom/transsion/widgetslib/R$styleable;->OSLoadingView_os_lv_running_type:I

    const/4 p3, 0x0

    .line 80
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    iget p2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initParams()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 23
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getMAnimAppeal(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAnimCircle(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAnimRepel(Lcom/transsion/widgetslib/view/OSLoadingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMOutCircleRadiusStatic$p(Lcom/transsion/widgetslib/view/OSLoadingView;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    return p0
.end method

.method private final doCirculateAnimation()V
    .locals 4

    .line 248
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x352

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    new-instance v1, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 252
    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 258
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 261
    new-instance v3, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;

    invoke-direct {v3}, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 263
    new-instance v3, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 269
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 272
    new-instance v1, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/view/interpolators/OSSharpCurveInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 274
    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 279
    new-instance v1, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/OSLoadingView$doCirculateAnimation$3$2;-><init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final doCirculateAnimation$lambda-2$lambda-1(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 253
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final doCirculateAnimation$lambda-4$lambda-3(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final doCirculateAnimation$lambda-6$lambda-5(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final drawCubic(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v1

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v4, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    div-double/2addr v1, v3

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 209
    :cond_0
    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/high16 v6, 0x40100000    # 2.25f

    mul-float/2addr v6, v3

    float-to-double v6, v6

    mul-double/2addr v6, v1

    sub-double/2addr v4, v6

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/4 v7, 0x4

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    float-to-double v4, v3

    :cond_1
    neg-float v6, v3

    float-to-double v6, v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    neg-float v4, v3

    float-to-double v4, v4

    :cond_2
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v6

    const/4 v6, 0x6

    int-to-double v6, v6

    div-double/2addr v1, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v1, v6, v1

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    .line 217
    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v10, v10

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3

    move-wide v8, v10

    .line 221
    :cond_3
    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    float-to-double v10, v10

    float-to-double v12, v3

    add-double v14, v1, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    add-double/2addr v10, v12

    double-to-float v3, v10

    .line 222
    iget v10, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    float-to-double v10, v10

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v12, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    sub-double/2addr v10, v12

    double-to-float v10, v10

    .line 224
    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    sub-float/2addr v11, v12

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float/2addr v11, v13

    add-float/2addr v11, v12

    float-to-double v11, v11

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v4

    sub-double v11, v11, v16

    double-to-float v11, v11

    .line 226
    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    move/from16 v16, v11

    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    sub-float/2addr v12, v11

    div-float/2addr v12, v13

    add-float/2addr v12, v11

    float-to-double v11, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v4

    sub-double v11, v11, v17

    double-to-float v11, v11

    .line 227
    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    move/from16 v17, v11

    float-to-double v11, v12

    move/from16 v18, v3

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    move-wide/from16 v19, v14

    float-to-double v14, v3

    sub-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v14, v1

    sub-double/2addr v11, v14

    double-to-float v1, v11

    .line 228
    iget v2, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    float-to-double v2, v2

    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v11, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v11, v14

    add-double/2addr v2, v11

    double-to-float v2, v2

    .line 229
    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    float-to-double v11, v3

    iget v3, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v14, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v14, v14, v21

    add-double/2addr v11, v14

    double-to-float v3, v11

    .line 230
    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    float-to-double v11, v11

    iget v14, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v14, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v14, v8

    sub-double/2addr v11, v14

    double-to-float v8, v11

    .line 232
    iget v9, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    sub-float/2addr v9, v11

    div-float/2addr v9, v13

    add-float/2addr v9, v11

    float-to-double v11, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v4

    add-double/2addr v11, v14

    double-to-float v9, v11

    .line 234
    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    iget v12, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v11, v4

    double-to-float v4, v11

    .line 236
    iget v5, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    float-to-double v5, v5

    iget v7, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v11, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v5, v11

    double-to-float v5, v5

    .line 237
    iget v6, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    float-to-double v6, v6

    iget v11, v0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    float-to-double v11, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v6, v11

    double-to-float v6, v6

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v7

    move/from16 v11, v18

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v7

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual {v7, v10, v11, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1, v9, v4, v3, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final getDistance()D
    .locals 6

    .line 197
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 198
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    iget p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    sub-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v4, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final getMAnimAppeal()Landroid/animation/ValueAnimator;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimAppeal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMAnimCircle()Landroid/animation/ValueAnimator;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimCircle$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMAnimRepel()Landroid/animation/ValueAnimator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mAnimRepel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMPaint()Landroid/graphics/Paint;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPaint$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMPath()Landroid/graphics/Path;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPath$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method private final initOutCircleRadius()V
    .locals 1

    .line 296
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    if-nez v0, :cond_0

    .line 298
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 296
    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    return-void
.end method

.method private final initParams()V
    .locals 4

    .line 165
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewSmall:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_size_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 165
    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    .line 176
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_loading_view_dot_size_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 190
    :goto_3
    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    div-float/2addr v0, v2

    .line 191
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    .line 192
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initOutCircleRadius()V

    return-void
.end method

.method private final resetParams()V
    .locals 1

    const v0, 0x40c90fdb

    .line 339
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    .line 340
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public final getMVisibilityChangedReStartAnim()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mVisibilityChangedReStartAnim:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 357
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 358
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 135
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPullPercent:F

    mul-float v3, v1, v2

    sub-float v3, v0, v3

    iput v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    .line 138
    iget v4, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mMeasuredSize:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 139
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    int-to-float v0, v4

    div-float/2addr v0, v6

    .line 140
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    .line 141
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v3, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->drawCubic(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 148
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    .line 149
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    .line 150
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    .line 151
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOuterCircleRadius:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    .line 152
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterLeftY:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 153
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightX:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterRightY:F

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getDistance()D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    iget v3, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCubicRatio:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    .line 155
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCurrentAngle:F

    float-to-double v1, v0

    const-wide v3, 0x3fe0c152382d7365L    # 0.5235987755982988

    cmpl-double v1, v1, v3

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v1, :cond_1

    float-to-double v4, v0

    cmpg-double v1, v4, v2

    if-ltz v1, :cond_2

    :cond_1
    float-to-double v0, v0

    sub-double/2addr v0, v2

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    .line 158
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->drawCubic(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 123
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 124
    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    if-nez p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 94
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-ne p1, p2, :cond_2

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_loading_medium_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewSmall:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_loading_default_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewMedium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$integer;->OSLoadingViewLarge:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 98
    :goto_0
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mType:I

    .line 106
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initParams()V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_1

    .line 110
    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mOutCircleRadiusStatic:F

    const/4 p2, 0x2

    int-to-float v0, p2

    mul-float/2addr p1, v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCircleRadius:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    invoke-static {v0, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 114
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 96
    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mMeasuredSize:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 118
    iput p2, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterX:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 119
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mCenterY:F

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mVisibilityChangedReStartAnim:Z

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->startLoadingAnimation()V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 2

    .line 316
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimRepel()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 318
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 319
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 323
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimCircle()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 325
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 329
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMAnimAppeal()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 330
    :cond_4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 331
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 332
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 335
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->resetParams()V

    return-void
.end method

.method public final setDotColor(I)V
    .locals 2

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    .line 352
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mDotColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setMVisibilityChangedReStartAnim(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mVisibilityChangedReStartAnim:Z

    return-void
.end method

.method public final setPullPercent(F)V
    .locals 2

    .line 307
    iget v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 308
    iput v1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    .line 311
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mPullPercent:F

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRunningType(I)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 292
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initOutCircleRadius()V

    return-void
.end method

.method public final startLoadingAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/transsion/widgetslib/view/OSLoadingView;->mRunningType:I

    .line 346
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->initOutCircleRadius()V

    .line 347
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->doCirculateAnimation()V

    return-void
.end method
