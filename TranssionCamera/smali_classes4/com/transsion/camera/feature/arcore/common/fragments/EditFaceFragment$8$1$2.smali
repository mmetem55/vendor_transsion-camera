.class Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$2;
.super Ljava/lang/Object;
.source "EditFaceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->saveFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$2;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 780
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1$2;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$2600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    .line 781
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->createToast()Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->save_avatar_failed:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->show(Landroid/content/Context;I)V

    return-void
.end method
