.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$6;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/capture/FirstFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;
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

    .line 368
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$6;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrameCome()V
    .locals 2

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$6;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updatePreviewCoverImage(ZLandroid/graphics/Bitmap;)V

    return-void
.end method
