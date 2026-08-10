.class Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;
.super Ljava/lang/Object;
.source "OSSmartScrollbar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 213
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .line 216
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$100(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$200(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v2

    sub-int v3, v0, v2

    .line 219
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 222
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    if-lez v3, :cond_1

    .line 224
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$500(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v4, v5

    .line 225
    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$500(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 226
    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$700(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v8

    sub-float v6, v5, v6

    mul-float/2addr v8, v6

    invoke-static {v7, v8}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 227
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$800(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 228
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$700(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 229
    iget-object v6, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$902(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    int-to-float v6, v1

    mul-float/2addr v6, v5

    div-float/2addr v6, v4

    .line 231
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_0

    sub-float v6, v5, v6

    .line 234
    :cond_0
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v4}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$900(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v4

    mul-float/2addr v4, v6

    .line 235
    iget-object v5, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v5}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v5

    iget-object v7, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    add-float/2addr v7, v4

    iget-object v8, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v7, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 237
    :goto_0
    iget-object v4, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {v4, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1102(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 238
    invoke-static {}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGlobalLayout, scrollRange: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollOffset: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollExtent: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollDistance: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ratio: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
