.class Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/bef/effectsdk/GLTextureView;


# direct methods
.method private constructor <init>(Lcom/bef/effectsdk/GLTextureView;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/effectsdk/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 574
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bef/effectsdk/GLTextureView;Lcom/bef/effectsdk/GLTextureView$1;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;-><init>(Lcom/bef/effectsdk/GLTextureView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 577
    iget v2, p0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v4, 0x2

    const/16 v5, 0x3038

    aput v5, v1, v4

    .line 580
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 581
    iget-object v6, p0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/effectsdk/GLTextureView;

    invoke-static {v6, v0}, Lcom/bef/effectsdk/GLTextureView;->access$202(Lcom/bef/effectsdk/GLTextureView;I)I

    .line 582
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v6, :cond_0

    new-array v0, v0, [I

    .line 583
    iget v1, p0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v1, v0, v3

    aput v4, v0, v2

    aput v5, v0, v4

    .line 585
    invoke-interface {p1, p2, p3, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 586
    iget-object p1, p0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/effectsdk/GLTextureView;

    invoke-static {p1, v4}, Lcom/bef/effectsdk/GLTextureView;->access$202(Lcom/bef/effectsdk/GLTextureView;I)I

    .line 587
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, p1, :cond_0

    .line 588
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;->this$0:Lcom/bef/effectsdk/GLTextureView;

    invoke-static {p0, v3}, Lcom/bef/effectsdk/GLTextureView;->access$202(Lcom/bef/effectsdk/GLTextureView;I)I

    :cond_0
    return-object v1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    .line 596
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 597
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "display:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " context: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DefaultContextFactory"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tid="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const-string p1, "eglDestroyContex"

    invoke-static {p1, p0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
