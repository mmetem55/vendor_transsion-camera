.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$1;->this$1:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 691
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$1;->this$1:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
