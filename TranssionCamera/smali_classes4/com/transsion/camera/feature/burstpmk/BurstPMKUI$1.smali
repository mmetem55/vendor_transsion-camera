.class Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;
.super Ljava/lang/Object;
.source "BurstPMKUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 3

    .line 70
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAbsolutePreviewRectChanged absoluteRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$102(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    if-eqz v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateNotifyTextLayout()V

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRelativePreviewRectChanged relativeRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
