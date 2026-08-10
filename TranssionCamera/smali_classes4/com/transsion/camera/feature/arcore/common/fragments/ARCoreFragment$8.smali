.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$8;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ARCoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 243
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->getItemCount()I

    move-result p0

    const/16 p3, 0x9

    if-nez p2, :cond_0

    .line 246
    invoke-static {p3}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_1

    .line 249
    invoke-static {p3}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method
