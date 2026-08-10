.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;
.super Lcom/transsion/camera/app/common/preview/PreviewOperator;
.source "GLSurfaceViewBackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLPreviewOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewOperator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)V

    return-void
.end method


# virtual methods
.method public executeInGLThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_0
    return-void
.end method

.method public modePause()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modePause()V

    :cond_0
    return-void
.end method

.method public modeReload()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeReload()V

    :cond_0
    return-void
.end method

.method public modeResume()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeResume()V

    :cond_0
    return-void
.end method

.method public modeUninit()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeUninit()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 161
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPause+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onSurfaceDestroyCallback()V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 166
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onPause-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 153
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public resetDrawState()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->resetDrawState()V

    :cond_0
    return-void
.end method

.method public setPhotoWithNormalPreview()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setNormalPreview()V

    :cond_0
    return-void
.end method

.method public setVideoWithP3Preview()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setVideoWithP3Preview()V

    :cond_0
    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public stopRenderRequest()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;->access$300(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewBackgroundController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->stopRenderRequest()V

    :cond_0
    return-void
.end method
