.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "CommonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->onShutterLongClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 838
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_shutter_bar_arcore:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 840
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 841
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 844
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 845
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$3;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    return-void
.end method
