.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;
.super Lcom/transsion/camera/app/common/preview/PreviewOperator;
.source "GLSurfaceViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLPreviewOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewOperator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public executeInGLThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public forceRender()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 2

    .line 63
    div-int/lit8 v0, p1, 0x10

    .line 64
    div-int/lit8 v1, p2, 0x10

    if-lez p3, :cond_0

    .line 66
    div-int v0, p1, p3

    .line 67
    div-int v1, p2, p3

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$000(I)I

    move-result p1

    .line 70
    invoke-static {v1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$000(I)I

    move-result p2

    .line 71
    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public loadGLResource(ZI)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResource(ZI)V

    :cond_0
    return-void
.end method

.method public loadGLResources(Z[I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResources(Z[I)V

    :cond_0
    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_0
    return-void
.end method

.method public modePause()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modePause()V

    :cond_0
    return-void
.end method

.method public modeReload()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeReload()V

    :cond_0
    return-void
.end method

.method public modeResume()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeResume()V

    :cond_0
    return-void
.end method

.method public modeUninit()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeUninit()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPause+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onSurfaceDestroyCallback()V

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 89
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onPause-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public resetDrawState()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->resetDrawState()V

    :cond_0
    return-void
.end method

.method public setPhotoWithNormalPreview()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setNormalPreview()V

    :cond_0
    return-void
.end method

.method public setVideoWithP3Preview()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setVideoWithP3Preview()V

    :cond_0
    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public stopRenderRequest()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->access$100(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->stopRenderRequest()V

    :cond_0
    return-void
.end method
