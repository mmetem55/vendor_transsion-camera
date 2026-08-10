.class Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
