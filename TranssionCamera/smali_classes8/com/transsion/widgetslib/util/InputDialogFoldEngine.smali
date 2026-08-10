.class public final Lcom/transsion/widgetslib/util/InputDialogFoldEngine;
.super Lcom/transsion/widgetslib/util/ActivityLifecycleCallbacksAdapter;
.source "InputDialogFoldEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ENTER_DURATION:J = 0xfaL

.field public static final EXIT_DURATION:J = 0x12cL


# instance fields
.field private mEnterValueAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mExitValueAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mInputDialogInputManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mIsPhoneHangOnStatus:Z

.field private final mLayoutStateChangeCallback:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mParentStopped:Z

.field private final mWindowWeakR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final windowInfoTracker$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FQ_AgLSo42_WgNAwcBTKcXgxjGI(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback$lambda-2(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zqt9Ov4iFvTLj42Rdt0H57ttj_Y(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback$lambda-2$lambda-1(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->Companion:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 2
    .param p1    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/ActivityLifecycleCallbacksAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mWindowWeakR:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mInputDialogInputManager$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$windowInfoTracker$2;-><init>(Landroid/view/Window;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->windowInfoTracker$delegate:Lkotlin/Lazy;

    .line 54
    new-instance p1, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback:Landroidx/core/util/Consumer;

    .line 134
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->registerListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$adaptPosition(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->adaptPosition()V

    return-void
.end method

.method public static final synthetic access$cancelAnimation(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->cancelAnimation()V

    return-void
.end method

.method public static final synthetic access$flexWindow(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$flexWindowInsets(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindowInsets(Landroid/view/Window;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getMEnterValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getMExitValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getMInputDialogInputManager(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMLayoutStateChangeCallback$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/core/util/Consumer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public static final synthetic access$getMParentStopped$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z

    return p0
.end method

.method public static final synthetic access$getWindow(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/view/Window;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWindowInfoTracker(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isNormalStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isNormalStatus(Landroid/view/Window;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isPhoneHungOnStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isPhoneHungOnStatus()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$revertBack(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->revertBack()V

    return-void
.end method

.method public static final synthetic access$setCurrentState(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setCurrentState(Landroid/view/Window;)V

    return-void
.end method

.method public static final synthetic access$setMEnterValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setMExitValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$shouldAdapt(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->shouldAdapt()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$softInputStatusChanged(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->softInputStatusChanged()Z

    move-result p0

    return p0
.end method

.method private final adaptPosition()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 193
    :cond_1
    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method private final cancelAnimation()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mEnterValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 283
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_2

    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final decideHungStatus(Landroidx/window/layout/FoldingFeature;)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FoldingFeature = isTableTopPosture state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/transsion/widgetslib/util/GlobalFuncsKt;->isTableTopPosture(Landroidx/window/layout/FoldingFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    const-string p0, " FoldingFeature = isTableTopPosture"

    .line 110
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    const-string p0, "FoldingFeature = else"

    .line 114
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/Window;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 292
    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method

.method private final flexWindowInsets(Landroid/view/Window;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/core/view/WindowInsetsCompat;",
            "-",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-interface {p2, p0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mInputDialogInputManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;

    return-object p0
.end method

.method private final getWindow()Landroid/view/Window;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mWindowWeakR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    return-object p0
.end method

.method private final getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->windowInfoTracker$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    return-object p0
.end method

.method private final initWindowSoftInputMode()V
    .locals 1

    .line 263
    sget-object v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;->INSTANCE:Lcom/transsion/widgetslib/util/InputDialogFoldEngine$initWindowSoftInputMode$1;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method private final isNormalStatus(Landroid/view/Window;)Z
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->isPhoneHungOnStatus()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isThunderbackWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isPhoneHungOnStatus()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mIsPhoneHangOnStatus:Z

    return p0
.end method

.method private static final mLayoutStateChangeCallback$lambda-2(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final mLayoutStateChangeCallback$lambda-2$lambda-1(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    .line 57
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/layout/DisplayFeature;

    if-nez p0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p0, Landroidx/window/layout/FoldingFeature;

    if-eqz v0, :cond_1

    .line 59
    check-cast p0, Landroidx/window/layout/FoldingFeature;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->decideHungStatus(Landroidx/window/layout/FoldingFeature;)V

    .line 60
    new-instance p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    :cond_1
    :goto_0
    return-void
.end method

.method private final revertBack()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mExitValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 229
    :cond_1
    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$revertBack$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$revertBack$2;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method private final setCurrentState(Landroid/view/Window;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.transsion.flamboyant.FoldableDeviceManager"

    .line 155
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 156
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getCurrentFoldState"

    new-array v5, v0, [Ljava/lang/Class;

    .line 158
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "STATE_HALF_OPEN"

    .line 159
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    .line 161
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    .line 165
    invoke-virtual {v4, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateHalfOpenFinalValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 167
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    goto :goto_0

    .line 169
    :catch_1
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->setPhoneHungOnStatus(Z)V

    :goto_0
    return-void
.end method

.method private final setPhoneHungOnStatus(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mIsPhoneHangOnStatus:Z

    return-void
.end method

.method private final shouldAdapt()Z
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final softInputStatusChanged()Z
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMIsSoftInputStatusInChanging()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onActivityStarted"

    .line 346
    invoke-static {p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 347
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z

    .line 348
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStart()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onActivityStopped:"

    .line 352
    invoke-static {p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 353
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mParentStopped:Z

    .line 354
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStop()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfigure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->initWindowSoftInputMode()V

    .line 258
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getMInputDialogInputManager()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onShow()V
    .locals 1

    const-string v0, "onShow: "

    .line 306
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 318
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStart()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 323
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onStart$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->getWindowInfoTracker()Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback:Landroidx/core/util/Consumer;

    if-nez p0, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v0, p0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    :goto_0
    return-void
.end method

.method public final release()V
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->cancelAnimation()V

    .line 270
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onStop()V

    .line 271
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$release$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$release$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->flexWindow(Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method
