.class public Lcom/opensource/svgaplayer/SVGAImageView;
.super Landroid/widget/ImageView;
.source "SVGAImageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGAImageView$FillMode;,
        Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;,
        Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;,
        Lcom/opensource/svgaplayer/SVGAImageView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAImageView.kt\ncom/opensource/svgaplayer/SVGAImageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n1#2:330\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lcom/opensource/svgaplayer/SVGACallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private clearsAfterDetached:Z

.field private clearsAfterStop:Z

.field private fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAnimating:Z

.field private loops:I

.field private mAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mAntiAlias:Z

.field private mAutoPlay:Z

.field private mEndFrame:I

.field private mStartFrame:I


# direct methods
.method public static synthetic $r8$lambda$NEj7t2JPHfF7fapTwhPWa-J2xe0(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation$lambda-3(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "SVGAImageView"

    .line 27
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    .line 47
    sget-object p1, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    .line 53
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    .line 54
    new-instance p1, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    invoke-direct {p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    .line 55
    new-instance p1, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    invoke-direct {p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;-><init>(Lcom/opensource/svgaplayer/SVGAImageView;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    if-eqz p2, :cond_0

    .line 63
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->loadAttrs(Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$onAnimationEnd(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/Animator;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public static final synthetic access$onAnimatorUpdate(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->onAnimatorUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$setAnimating$p(Lcom/opensource/svgaplayer/SVGAImageView;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method

.method private final createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/opensource/svgaplayer/SVGAImageView;",
            ">;)",
            "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;"
        }
    .end annotation

    .line 103
    new-instance p0, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;

    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView$createParseCompletion$1;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object p0
.end method

.method private final generateScale()D
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :try_start_0
    const-string v2, "android.animation.ValueAnimator"

    .line 167
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDurationScale"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 168
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    new-array v5, v4, [Ljava/lang/Object;

    .line 169
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    float-to-double v5, v3

    const-wide/16 v7, 0x0

    cmpg-double v3, v5, v7

    const/4 v7, 0x1

    if-nez v3, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_3

    :try_start_1
    const-string v3, "setDurationScale"

    new-array v8, v7, [Ljava/lang/Class;

    .line 171
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_2

    return-wide v5

    .line 172
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v7, v7, [Ljava/lang/Object;

    const/high16 v8, 0x3f800000    # 1.0f

    .line 173
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :try_start_2
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    const-string v3, "The animation duration scale has been reset to 1.0x, because you closed it on developer options."

    invoke-virtual {v2, p0, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    move-wide v0, v5

    goto :goto_1

    :cond_3
    move-wide v0, v5

    goto :goto_2

    .line 169
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 180
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-wide v0
.end method

.method private final getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/opensource/svgaplayer/SVGADrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final loadAttrs(Landroid/util/AttributeSet;)V
    .locals 3

    .line 67
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_loopCount:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    .line 69
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_clearsAfterStop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    .line 70
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_clearsAfterDetached:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    .line 71
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_antiAlias:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    .line 72
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_autoPlay:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    .line 73
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_fillMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Clear:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Forward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    goto :goto_0

    :pswitch_2
    const-string v1, "0"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    sget-object v0, Lcom/opensource/svgaplayer/SVGAImageView$FillMode;->Backward:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    .line 86
    :cond_3
    :goto_0
    sget v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView_source:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 87
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->parserSource(Ljava/lang/String;)V

    .line 89
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    .line 194
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 195
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 197
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->fillMode:Lcom/opensource/svgaplayer/SVGAImageView$FillMode;

    sget-object v1, Lcom/opensource/svgaplayer/SVGAImageView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    goto :goto_0

    .line 202
    :cond_1
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    goto :goto_0

    .line 199
    :cond_2
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    .line 209
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/opensource/svgaplayer/SVGACallback;->onFinished()V

    :cond_4
    return-void
.end method

.method private final onAnimatorUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 186
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCurrentFrame$com_opensource_svgaplayer(I)V

    .line 188
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-double v1, p1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 189
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result p1

    invoke-interface {p0, p1, v1, v2}, Lcom/opensource/svgaplayer/SVGACallback;->onStep(ID)V

    :cond_2
    return-void

    .line 187
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final parserSource(Ljava/lang/String;)V
    .locals 7

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 94
    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    const-string v2, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 95
    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->createParseCompletion(Ljava/lang/ref/WeakReference;)Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;

    :goto_1
    return-void
.end method

.method private final play(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    .locals 7

    .line 133
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->TAG:Ljava/lang/String;

    const-string v1, "================ start animation ================"

    invoke-virtual {p1, v0, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setupDrawable()V

    const/4 v0, 0x0

    .line 136
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    .line 137
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFrames()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const v3, 0x7fffffff

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 139
    iget v4, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    aput v4, v3, v0

    aput v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget v1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mEndFrame:I

    iget v3, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mStartFrame:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    const/16 v3, 0x3e8

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getFPS()I

    move-result p1

    div-int/2addr v3, p1

    mul-int/2addr v1, v3

    int-to-double v3, v1

    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->generateScale()D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    if-gtz p1, :cond_1

    const p1, 0x1869f

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 143
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorUpdateListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimatorListener:Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 150
    :goto_1
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final setupDrawable()V
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    const-string v1, "scaleType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/opensource/svgaplayer/SVGADrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private final startAnimation(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView$$ExternalSyntheticLambda0;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final startAnimation$lambda-3(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 2

    const-string v0, "$videoItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p1, Lcom/opensource/svgaplayer/SVGAImageView;->mAntiAlias:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setAntiAlias(Z)V

    .line 115
    invoke-virtual {p1, p0}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 116
    invoke-direct {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    const-string v1, "scaleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGADrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    :goto_0
    iget-boolean p0, p1, Lcom/opensource/svgaplayer/SVGAImageView;->mAutoPlay:Z

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 213
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 214
    :goto_0
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getCallback()Lcom/opensource/svgaplayer/SVGACallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-object p0
.end method

.method public final isAnimating()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 294
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 295
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 296
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterDetached:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 278
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 281
    :cond_2
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGADrawable;->getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getMClickMap$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget v5, v3, v1

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/4 v5, 0x2

    aget v5, v3, v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget v5, v3, v0

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x3

    aget v3, v3, v5

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    goto :goto_1

    .line 290
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/SVGACallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 48
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->callback:Lcom/opensource/svgaplayer/SVGACallback;

    return-void
.end method

.method public final setLoops(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAImageView;->loops:I

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 237
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public final setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGADynamicEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-nez p2, :cond_1

    new-instance p2, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {p2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    :cond_1
    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    const/4 p1, 0x1

    .line 245
    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    .line 246
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final startAnimation()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void
.end method

.method public final startAnimation(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/utils/SVGARange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;->play(Lcom/opensource/svgaplayer/utils/SVGARange;Z)V

    return-void
.end method

.method public final stopAnimation()V
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->clearsAfterStop:Z

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    return-void
.end method

.method public final stopAnimation(Z)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 232
    :cond_2
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADrawable;->stop()V

    .line 233
    :cond_3
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->getSVGADrawable()Lcom/opensource/svgaplayer/SVGADrawable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;->setCleared$com_opensource_svgaplayer(Z)V

    :goto_0
    return-void
.end method
