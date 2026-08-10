.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$13;
.super Ljava/lang/Object;
.source "GLPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
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

    .line 578
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$13;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$13;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setBackgroundResource(I)V

    return-void
.end method
