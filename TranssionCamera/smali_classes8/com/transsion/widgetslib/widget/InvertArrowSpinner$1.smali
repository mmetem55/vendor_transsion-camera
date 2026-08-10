.class Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;
.super Ljava/lang/Object;
.source "InvertArrowSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->performClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_spinner_background_material_blue_open:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->val$vto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->access$000(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->val$vto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->access$000(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->val$vto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->access$100(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->access$200(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->access$200(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->access$200(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 81
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->val$vto:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/InvertArrowSpinner$1;->this$0:Lcom/transsion/widgetslib/widget/InvertArrowSpinner;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/InvertArrowSpinner;->access$200(Lcom/transsion/widgetslib/widget/InvertArrowSpinner;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
