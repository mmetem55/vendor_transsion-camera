.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updatePreviewCoverImage(ZLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$needToShow:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;ZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;->val$needToShow:Z

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;->val$needToShow:Z

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;ZLandroid/graphics/Bitmap;)V

    return-void
.end method
