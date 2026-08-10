.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$2;
.super Ljava/lang/Object;
.source "BackgroundItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$2;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$2;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$2;->val$position:I

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;I)V

    return-void
.end method
