.class Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$2;
.super Ljava/lang/Object;
.source "ImageCaptureViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 111
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$2;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder$2;->this$0:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;->-$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
