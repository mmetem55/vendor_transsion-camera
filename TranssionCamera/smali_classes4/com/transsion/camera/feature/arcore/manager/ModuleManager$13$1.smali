.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13$1;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->onPixelReadFinished([III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13$1;->this$1:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 0

    .line 952
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2502(Landroid/net/Uri;)Landroid/net/Uri;

    .line 953
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13$1;->this$1:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->val$pictureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;

    if-eqz p0, :cond_0

    .line 954
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;->onPictureSaved(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
