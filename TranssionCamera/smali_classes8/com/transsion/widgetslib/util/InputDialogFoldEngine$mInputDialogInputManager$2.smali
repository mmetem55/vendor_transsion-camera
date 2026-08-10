.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/InputDialogFoldEngine;-><init>(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/transsion/widgetslib/util/InputDialogInputManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/transsion/widgetslib/util/InputDialogInputManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogInputManager;

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$getWindow(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$mInputDialogInputManager$2;->invoke()Lcom/transsion/widgetslib/util/InputDialogInputManager;

    move-result-object p0

    return-object p0
.end method
