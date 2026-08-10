.class Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;
.super Ljava/lang/Object;
.source "ImageCaptureViewHolder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->onLongClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 94
    invoke-static {}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreDraw: line :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    sget v1, Lcom/transsion/ardrawlines/R$drawable;->toast_background_m:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    sget v1, Lcom/transsion/ardrawlines/R$drawable;->toast_background:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
