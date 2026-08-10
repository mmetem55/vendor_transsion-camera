.class Lcom/transsion/widgetslib/widget/SearchBar$7;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->preDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 372
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1002(Lcom/transsion/widgetslib/widget/SearchBar;I)I

    .line 374
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1200(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    .line 375
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1302(Lcom/transsion/widgetslib/widget/SearchBar;I)I

    .line 376
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1000(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1402(Lcom/transsion/widgetslib/widget/SearchBar;I)I

    .line 379
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$600(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1500(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1600(Lcom/transsion/widgetslib/widget/SearchBar;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 385
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1400(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 386
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setTranslationX(F)V

    .line 389
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1700(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 391
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1800(Lcom/transsion/widgetslib/widget/SearchBar;)V

    const/4 p0, 0x1

    return p0
.end method
