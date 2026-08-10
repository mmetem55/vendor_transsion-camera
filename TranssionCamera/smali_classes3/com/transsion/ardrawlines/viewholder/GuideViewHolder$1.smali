.class Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;
.super Ljava/lang/Object;
.source "GuideViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->changeGuideText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    iput p2, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmIsVisible(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->val$type:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmGuideText(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/ardrawlines/R$string;->guide_later_three:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmGuideText(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/ardrawlines/R$string;->guide_later_two:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmGuideText(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/ardrawlines/R$string;->guide_later_one:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {v0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmGuideText(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder$1;->this$0:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    invoke-static {p0}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;->-$$Nest$fgetmContext(Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/ardrawlines/R$string;->guide_init:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method
