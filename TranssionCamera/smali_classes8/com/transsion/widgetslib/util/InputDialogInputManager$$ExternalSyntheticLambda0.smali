.class public final synthetic Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/widgetslib/util/InputDialogInputManager;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/widgetslib/util/InputDialogInputManager;

    iput-object p2, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/widgetslib/util/InputDialogInputManager;

    iget-object v1, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/transsion/widgetslib/util/InputDialogInputManager$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->$r8$lambda$TqiFh_Ds-1iohORT1Db2w7udgiw(Lcom/transsion/widgetslib/util/InputDialogInputManager;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
