.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$11;
.super Lcom/transsion/camera/feature/arcore/common/utils/SimpleAnimateListener;
.source "FacemojiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->updateUIByPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$11;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/utils/SimpleAnimateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$11;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 426
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
