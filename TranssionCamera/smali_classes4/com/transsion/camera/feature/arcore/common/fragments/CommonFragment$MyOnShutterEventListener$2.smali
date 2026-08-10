.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$2;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "CommonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->onShutterClick(Z)V
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

    .line 734
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$2;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 737
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$2;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_shutter_bar_arcore:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 738
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener$2;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$002(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    return-void
.end method
