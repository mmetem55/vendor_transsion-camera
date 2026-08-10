.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$200(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "notifyTextureRenderedAfterStartRenderRequest post to main"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$200(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;->previewRendered(Landroid/graphics/SurfaceTexture;)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$202(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    :cond_0
    return-void
.end method
