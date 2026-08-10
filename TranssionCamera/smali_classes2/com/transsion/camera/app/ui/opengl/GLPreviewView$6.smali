.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeUninit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeUninit run,callbacker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mTmpCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1300(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSurfaceTexture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1300(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eq v0, p0, :cond_1

    .line 386
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->modeUninitCallback()V

    :cond_1
    return-void
.end method
