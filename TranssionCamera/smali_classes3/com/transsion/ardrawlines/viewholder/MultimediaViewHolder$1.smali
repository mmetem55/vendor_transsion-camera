.class Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$1;
.super Ljava/lang/Object;
.source "MultimediaViewHolder.java"

# interfaces
.implements Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->onResume(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/transsion/camera/manager/ThumbnailItem;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    iget-object v1, p1, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->-$$Nest$fputmThumbnailUri(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;Landroid/net/Uri;)V

    .line 107
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->-$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    iget-object p1, p1, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/transsion/ardrawlines/utils/BitmapUtil;->toRoundInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-static {}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "wow: thumbnail task done "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onTaskDone: thumbnail is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->-$$Nest$fgetmBinding(Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    sget p1, Lcom/transsion/ardrawlines/R$drawable;->ic_gallery:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method
