.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "execute mRenderedCallbackRunnable"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$100(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->access$100(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
