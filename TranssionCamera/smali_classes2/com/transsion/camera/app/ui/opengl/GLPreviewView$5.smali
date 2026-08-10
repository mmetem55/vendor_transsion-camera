.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
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

    .line 346
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$500(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$400(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->modeInitCallback()V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1302(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1302(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 365
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeInit run,callbacker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->val$callbacker:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mTmpCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$1300(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
