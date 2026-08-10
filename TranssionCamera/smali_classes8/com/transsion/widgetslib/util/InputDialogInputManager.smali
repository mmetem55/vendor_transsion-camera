.class public final Lcom/transsion/widgetslib/util/InputDialogInputManager;
.super Ljava/lang/Object;
.source "InputDialogFoldEngine.kt"


# instance fields
.field private mCurrentScreenOrientation:I

.field private mIsSoftInputStatusInChanging:Z

.field private mOffset:I

.field private mWindowHeight:I

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TqiFh_Ds-1iohORT1Db2w7udgiw(Lcom/transsion/widgetslib/util/InputDialogInputManager;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->registerListener$lambda-3$lambda-2(Lcom/transsion/widgetslib/util/InputDialogInputManager;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lfbVXQ48aCePYsQOCGWpswCKuZc(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->lambda-1$lambda-0(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->view:Landroid/view/View;

    const/4 v0, 0x1

    .line 367
    iput v0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mCurrentScreenOrientation:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mCurrentScreenOrientation:I

    .line 376
    :goto_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->setOffset()V

    return-void
.end method

.method private static final lambda-1$lambda-0(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_run"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mWindowHeight:I

    return-void
.end method

.method private static final registerListener$lambda-3$lambda-2(Lcom/transsion/widgetslib/util/InputDialogInputManager;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_run"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "insets"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p3

    const-string v0, "insets.getInsets(WindowInsets.Type.ime())"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    .line 402
    iget v1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mCurrentScreenOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 403
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnApplyWindowInsetsListener: ime visible = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " windowHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mWindowHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    return-object p4
.end method

.method private final setOffset()V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMWindowHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 412
    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mOffset:I

    return-void
.end method


# virtual methods
.method public final getMIsSoftInputStatusInChanging()Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mIsSoftInputStatusInChanging:Z

    return p0
.end method

.method public final getMOffset()I
    .locals 0

    .line 365
    iget p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mOffset:I

    return p0
.end method

.method public final getMWindowHeight()I
    .locals 0

    .line 366
    iget p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mWindowHeight:I

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 363
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->view:Landroid/view/View;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfigure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mCurrentScreenOrientation:I

    .line 423
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->setOffset()V

    .line 424
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->view:Landroid/view/View;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, p1, :cond_0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "onConfigurationChanged:  "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final registerListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->view:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/util/InputDialogInputManager$registerListener$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager$registerListener$1$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 399
    new-instance v1, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :goto_0
    return-void
.end method

.method public final setMIsSoftInputStatusInChanging(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mIsSoftInputStatusInChanging:Z

    return-void
.end method

.method public final setMOffset(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mOffset:I

    return-void
.end method

.method public final setMWindowHeight(I)V
    .locals 0

    .line 366
    iput p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager;->mWindowHeight:I

    return-void
.end method
