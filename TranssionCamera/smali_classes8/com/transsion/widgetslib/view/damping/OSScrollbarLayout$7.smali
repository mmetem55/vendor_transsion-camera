.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;
.super Ljava/lang/Object;
.source "OSScrollbarLayout.java"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->onEdgeEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .locals 1

    .line 464
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;F)V

    .line 468
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$100(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1000(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
