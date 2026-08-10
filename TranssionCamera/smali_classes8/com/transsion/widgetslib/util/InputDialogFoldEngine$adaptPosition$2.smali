.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->adaptPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/Window;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method public static synthetic $r8$lambda$9JgW2fIF8AI_-k-K2URUCGMx1WM(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->invoke$lambda-1$lambda-0(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-1$lambda-0(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_run"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance p2, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2$1$1$1;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2$1$1$1;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-static {p0, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$flexWindow(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->invoke(Landroid/view/Window;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .locals 3
    .param p1    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$flexWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMInputDialogInputManager(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptPosition: mBuilder.dialog.getWindow().getAttributes().width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMInputDialogInputManager(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMInputDialogInputManager(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMWindowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    aput p1, v1, v2

    const/4 p1, 0x1

    .line 203
    iget-object v2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMInputDialogInputManager(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->getMOffset()I

    move-result v2

    aput v2, v1, p1

    .line 201
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 200
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$setMEnterValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V

    .line 205
    iget-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getMEnterValueAnimator$p(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const-wide/16 v0, 0xfa

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$adaptPosition$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
