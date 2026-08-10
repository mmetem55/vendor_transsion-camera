.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->mLayoutStateChangeCallback$lambda-2$lambda-1(Landroidx/window/layout/WindowLayoutInfo;Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
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

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Landroid/view/Window;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;->invoke(Landroid/view/Window;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/Window;)V
    .locals 1
    .param p1    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$flexWindow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mLayoutStateChangeCallback$1$1$1$1$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;)V

    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$flexWindowInsets(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/view/Window;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
