.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->onShow()V
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
.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 307
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;->invoke(Landroid/view/Window;)V

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

    .line 308
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$setCurrentState(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)V

    .line 309
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {v2, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$isNormalStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 314
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fitInsetsTypes = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->transformContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 316
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$onShow$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
