.class Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FaceBeautyRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddingItemDecoration"
.end annotation


# instance fields
.field private final mFirstItemPadding:I

.field private final mItemPadding:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 125
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;->mFirstItemPadding:I

    .line 126
    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;->mItemPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 133
    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;->mFirstItemPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 135
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p0, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
