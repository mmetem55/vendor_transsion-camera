.class final Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;
.super Lkotlin/jvm/internal/Lambda;
.source "OSLoadingView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;->this$0:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->access$getMOutCircleRadiusStatic$p(Lcom/transsion/widgetslib/view/OSLoadingView;)F

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    const/4 v1, 0x0

    aput v1, v0, p0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimAppeal$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
