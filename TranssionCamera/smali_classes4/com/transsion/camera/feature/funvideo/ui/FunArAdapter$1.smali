.class Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FunArAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$1;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$1;->this$0:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
