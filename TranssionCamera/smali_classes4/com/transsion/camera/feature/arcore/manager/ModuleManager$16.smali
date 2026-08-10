.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$16;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->lambda$saveVideo$3(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V
    .locals 0

    .line 1159
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$16;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1162
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->createToast()Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$16;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->video_saved_tip:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->show(Landroid/content/Context;I)V

    return-void
.end method
