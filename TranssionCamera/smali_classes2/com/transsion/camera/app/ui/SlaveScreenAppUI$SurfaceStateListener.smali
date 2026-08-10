.class Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;
.super Ljava/lang/Object;
.source "SlaveScreenAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/SlaveScreenAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;Lcom/transsion/camera/app/ui/SlaveScreenAppUI$1;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)V

    return-void
.end method


# virtual methods
.method public getSurfaceDestroyReason()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 2

    .line 187
    invoke-static {}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceAvailable object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mMode:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    .line 188
    invoke-static {p3}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$200(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 187
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$300(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$200(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)I

    move-result p1

    if-nez p1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$300(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->update(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .locals 2

    .line 197
    invoke-static {}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mMode:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    .line 198
    invoke-static {p3}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$200(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 197
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$300(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$200(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)I

    move-result p1

    if-nez p1, :cond_0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SlaveScreenAppUI$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->access$300(Lcom/transsion/camera/app/ui/SlaveScreenAppUI;)Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/manager/AbstractSlavePreviewDisplayManager;->update(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public surfaceDrawn()V
    .locals 0

    return-void
.end method

.method public surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
    .locals 0

    return-void
.end method
