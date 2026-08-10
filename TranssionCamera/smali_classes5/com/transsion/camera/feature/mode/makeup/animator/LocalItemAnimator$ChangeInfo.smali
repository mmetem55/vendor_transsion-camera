.class Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "LocalItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 73
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 79
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->fromX:I

    .line 80
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->fromY:I

    .line 81
    iput p5, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->toX:I

    .line 82
    iput p6, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->toY:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->fromX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->fromY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->toX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator$ChangeInfo;->toY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
