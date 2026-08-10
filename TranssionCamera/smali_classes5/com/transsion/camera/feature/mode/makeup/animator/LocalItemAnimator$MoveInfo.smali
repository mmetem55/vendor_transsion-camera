.class Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "LocalItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 61
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$MoveInfo;->fromX:I

    .line 62
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$MoveInfo;->fromY:I

    .line 63
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$MoveInfo;->toX:I

    .line 64
    iput p5, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$MoveInfo;->toY:I

    return-void
.end method
