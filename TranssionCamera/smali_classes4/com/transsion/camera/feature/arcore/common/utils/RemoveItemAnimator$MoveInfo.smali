.class Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "RemoveItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 47
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->fromX:I

    .line 48
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->fromY:I

    .line 49
    iput p4, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->toX:I

    .line 50
    iput p5, p0, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator$MoveInfo;->toY:I

    return-void
.end method
