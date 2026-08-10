.class Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;
.super Ljava/lang/Object;
.source "OSSmartScrollbar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$100(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$200(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 251
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 254
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    if-lez v0, :cond_1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 257
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    sub-float v1, v2, v1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$900(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v0

    mul-float/2addr v0, v1

    .line 261
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1102(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 266
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
