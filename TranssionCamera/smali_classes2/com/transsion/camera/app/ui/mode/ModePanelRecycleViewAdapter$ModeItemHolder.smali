.class public Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModePanelRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeItemHolder"
.end annotation


# instance fields
.field mModeIconView:Landroid/widget/ImageView;

.field mModeTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902a0

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    const v0, 0x7f0902a1

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    return-void
.end method
