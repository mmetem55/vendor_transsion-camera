.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$1;
.super Ljava/lang/Object;
.source "AvatarItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$1;->val$position:I

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;I)V

    return-void
.end method
