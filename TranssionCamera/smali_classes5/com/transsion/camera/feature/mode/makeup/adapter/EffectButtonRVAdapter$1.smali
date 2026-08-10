.class Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EffectButtonRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->notifyItemChangedSelected(I)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
