.class Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FilterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
