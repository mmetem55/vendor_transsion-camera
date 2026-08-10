.class Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;
.super Ljava/lang/Object;
.source "SlavePreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/SlavePreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;Lcom/transsion/camera/app/ui/SlavePreviewUI$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/SlavePreviewUI;)V

    return-void
.end method


# virtual methods
.method public getSurfaceDestroyReason()I
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->getSurfaceDestroyReason()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDrawn()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlavePreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->access$500(Lcom/transsion/camera/app/ui/SlavePreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    :cond_0
    return-void
.end method

.method public surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
    .locals 0

    return-void
.end method
