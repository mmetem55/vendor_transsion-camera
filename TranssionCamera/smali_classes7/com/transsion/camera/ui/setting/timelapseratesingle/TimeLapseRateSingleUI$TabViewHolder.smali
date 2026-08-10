.class Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TimeLapseRateSingleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabViewHolder"
.end annotation


# instance fields
.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 587
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09046a

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    .line 589
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0603ce

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method
