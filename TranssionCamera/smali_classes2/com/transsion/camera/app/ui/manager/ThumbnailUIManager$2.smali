.class Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;
.super Ljava/lang/Object;
.source "ThumbnailUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/transsion/camera/app/thumbnail/ThumbnailItem;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 88
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "onTaskDone item is null!"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/ui/IThumbnailUI;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p1, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 92
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onTaskDone bitmap is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/ui/IThumbnailUI;

    move-result-object v1

    iget-object p1, p1, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/ui/IThumbnailUI;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :goto_0
    return-void
.end method
