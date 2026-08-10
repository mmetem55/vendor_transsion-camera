.class public Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "EditorItemAnimator.java"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 10
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 16
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    .line 18
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
