.class Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;
.super Ljava/lang/Object;
.source "ARPreview.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field private mEGLContextClientVersion:I

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 55
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 59
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->mEGLContextClientVersion:I

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 63
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->mEGLContextClientVersion:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 66
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p3

    .line 68
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create EGLContext,thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$100(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;->queryExtensions(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    return-object p3
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy EGLContext,thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$200(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$200(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;->unInit()V

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$GLContextFactory;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$302(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Z)Z

    .line 85
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",thread:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eglDestroyContex ErrorCode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
