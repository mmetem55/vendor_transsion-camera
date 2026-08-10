.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResources(Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$isSync:Z

.field final synthetic val$resIds:[I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;[IZ)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$resIds:[I

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$isSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$600(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$resIds:[I

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->loadGLResourcesCallback([I)V

    .line 211
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 213
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$isSync:Z

    if-eqz v0, :cond_2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    :cond_2
    return-void
.end method
