.class Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;
.super Ljava/lang/Object;
.source "PreviewBackground.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;Lcom/transsion/camera/app/ui/PreviewBackground$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)V

    return-void
.end method


# virtual methods
.method public getSurfaceDestroyReason()I
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

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

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDrawn()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    :cond_0
    return-void
.end method

.method public surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground$SurfaceStatusListenerImpl;->this$1:Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;->access$400(Lcom/transsion/camera/app/ui/PreviewBackground$SurfaceBackground;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V

    :cond_0
    return-void
.end method
