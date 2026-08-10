.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->handleTakePicAnim([III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

.field final synthetic val$argb:[I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;[III)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->val$argb:[I

    iput p3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->val$width:I

    iput p4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 861
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 865
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->val$argb:[I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->val$width:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->val$height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 869
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->setCameraImage(Landroid/graphics/Bitmap;)V

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    if-nez v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->initSpringAnimation()V

    .line 872
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1900(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1802(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;I)I

    .line 874
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->startAnimation()V

    return-void
.end method
