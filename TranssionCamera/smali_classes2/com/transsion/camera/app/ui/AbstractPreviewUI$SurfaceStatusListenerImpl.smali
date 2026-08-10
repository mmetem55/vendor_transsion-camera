.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI$1;)V
    .locals 0

    .line 1229
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void
.end method


# virtual methods
.method public getSurfaceDestroyReason()I
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

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

    .line 1232
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 1

    .line 1242
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1246
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDrawn()V
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$2700(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/anim/AnimationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$SurfaceStatusListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$3100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/anim/AnimationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->inflate()V

    :cond_1
    return-void
.end method

.method public surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
    .locals 0

    return-void
.end method
