.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;->invoke(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/core/view/WindowInsetsCompat;",
        "Landroidx/core/view/WindowInsetsCompat;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_flexWindow:Landroid/view/Window;

.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iput-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    check-cast p2, Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->invoke(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$flexWindowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p1

    .line 63
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-static {p2, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$isNormalStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$cancelAnimation(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    .line 65
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p2, v0

    if-nez p2, :cond_2

    .line 66
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 67
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 68
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, 0x0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 69
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p2, v0

    if-lez p2, :cond_2

    .line 73
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 74
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    if-eqz p1, :cond_1

    .line 77
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 78
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 77
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WindowInsets.Type.ime().inv() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    not-int v0, v0

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attributes.fitInsetsTypes = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attributesTemp.y = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " visible = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-static {p2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->$this_flexWindow:Landroid/view/Window;

    invoke-static {p2, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$isNormalStatus(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 92
    :cond_3
    iget-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$shouldAdapt(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$softInputStatusChanged(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 93
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$adaptPosition(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V

    :cond_4
    return-void
.end method
