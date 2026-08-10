.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$7;
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

    .line 234
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const/16 p0, 0x9

    .line 237
    invoke-static {p0}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result p2

    invoke-static {p0}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
