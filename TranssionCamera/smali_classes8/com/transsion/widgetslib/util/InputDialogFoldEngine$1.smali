.class final Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InputDialogFoldEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1;->this$0:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    new-instance v0, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$1$1;-><init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Z)V

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine;->access$flexWindow(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    return-void
.end method
